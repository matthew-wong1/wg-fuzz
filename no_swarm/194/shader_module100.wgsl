struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(873f, 1201f), vec3<bool>(true, false, false), vec3<f32>(-2004f, -975f, 1780f));

var<private> global2: u32;

var<private> global3: array<f32, 12> = array<f32, 12>(-1400f, 822f, 1033f, -1000f, -1000f, -1000f, 2074f, -122f, 222f, -177f, 1209f, 1000f);

var<private> global4: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global2 = ~19030u ^ ~((u_input.a.x << (u_input.a.x % 32u)) & _wgslsmith_div_u32(arg_0 | u_input.a.x, ~0u));
    let var_0 = !global1.b;
    let var_1 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0, 0u, 20166u), u_input.a.x);
    global4 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global4.c.xy + vec2<f32>(global3[_wgslsmith_index_u32(1u, 12u)], 690f)), _wgslsmith_f_op_vec2_f32(exp2(global4.c.xy)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1939f, global3[_wgslsmith_index_u32(0u, 12u)])), vec2<f32>(-1563f, global4.a.x)))))), select(!select(!var_0, global4.b, u_input.a.x > var_1), var_0, global4.b.x), global1.c);
    var var_2 = Struct_1(all(!(!select(vec3<bool>(var_0.x, global1.b.x, global0.a), global4.b, var_0))), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(-38862i, global0.b, 20424i, global0.b), max(select(vec4<i32>(2147483647i, global0.b, global0.b, global0.b), vec4<i32>(global0.b, global0.b, 9325i, global0.b), vec4<bool>(global0.a, global0.a, global0.a, global0.a)), vec4<i32>(global0.b, -67971i, global0.b, 21040i) >> (vec4<u32>(var_1, arg_0, var_1, 4294967295u) % vec4<u32>(32u)))));
    return max(abs(u_input.a.xx) >> (vec2<u32>(u_input.a.x, arg_0) % vec2<u32>(32u)), u_input.a.xy);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(global1.c.zz, !global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c - vec3<f32>(_wgslsmith_f_op_f32(max(global1.a.x, global1.c.x)), 746f, _wgslsmith_f_op_f32(min(1488f, 169f))))));
    var var_1 = _wgslsmith_mod_vec2_u32(abs(~u_input.a.yx ^ vec2<u32>(46043u, u_input.a.x)), vec2<u32>(7491u, 7943u)) | ~func_3(4294967295u << (u_input.a.x % 32u));
    var var_2 = 326f;
    let var_3 = _wgslsmith_div_u32(~abs(u_input.a.x), ~20472u);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1600f)), global1.c.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(var_3, 12u)], global4.a.x) - vec2<f32>(var_0.a.x, 200f)))), global1.b, vec3<f32>(1797f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x + _wgslsmith_f_op_f32(-748f * 553f))), var_0.c.x));
    return Struct_1(global0.a, firstTrailingBit(global0.b));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = global1.a.x;
    global2 = u_input.a.x;
    var var_1 = arg_1;
    let var_2 = func_2();
    let var_3 = Struct_2(global1.c.zx, select(!(!global1.b), arg_3.b, !(!(!vec3<bool>(true, true, arg_3.b.x)))), _wgslsmith_f_op_vec3_f32(-arg_3.c));
    return !vec3<bool>(any(!select(vec4<bool>(var_3.b.x, true, global4.b.x, var_2.a), vec4<bool>(var_3.b.x, true, var_2.a, arg_3.b.x), vec4<bool>(arg_3.b.x, global0.a, global1.b.x, var_3.b.x))), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-433f * -859f), -1768f);
    var var_1 = 1u;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(515f, -894f) - vec2<f32>(global4.c.x, global1.c.x)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, global4.a.x)), global1.a)), select(select(func_1(true, vec4<u32>(17854u, 0u, 0u, 0u), u_input.a.x, Struct_2(vec2<f32>(global1.c.x, 519f), vec3<bool>(global4.b.x, false, global4.b.x), global4.c)), func_1(global1.b.x || false, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 31951u), ~u_input.a.x, Struct_2(vec2<f32>(926f, global3[_wgslsmith_index_u32(31261u, 12u)]), vec3<bool>(false, global4.b.x, true), vec3<f32>(134f, global3[_wgslsmith_index_u32(4294967295u, 12u)], global4.c.x))), global4.b.x), vec3<bool>(global4.b.x, false, any(!vec2<bool>(global4.b.x, true))), global1.b.x), _wgslsmith_f_op_vec3_f32(-global1.c));
    var var_3 = Struct_1(false, 40736i);
    var var_4 = 60245u;
    let x = u_input.a;
    s_output = StorageBuffer(-min(abs(vec2<i32>(var_3.b, 15075i)), vec2<i32>(var_3.b, 0i) >> (u_input.a.yz % vec2<u32>(32u))) | (_wgslsmith_add_vec2_i32(-vec2<i32>(8437i, 1i), vec2<i32>(var_3.b, 50138i)) ^ -vec2<i32>(1789i, 2147483647i)), var_3.b, ~(~(~4294967295u)), ((-1i & var_3.b) & (i32(-1i) * -2147483647i)) << (abs(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(u_input.a.x, 1u))) % 32u));
}

