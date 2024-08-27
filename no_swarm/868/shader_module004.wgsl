struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(35588u, 0u, 1u);

var<private> global1: bool = true;

var<private> global2: Struct_3;

var<private> global3: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(vec4<u32>(35635u, 68819u, 14964u, 55985u), Struct_1(vec3<f32>(-628f, 134f, 342f), vec4<i32>(41125i, -1i, 0i, 75525i), vec4<f32>(-580f, -944f, 200f, 342f)), Struct_2(true, 1000f, vec3<i32>(23082i, -35i, 1i), vec4<bool>(true, false, false, true)), vec2<f32>(419f, -227f)), Struct_3(vec4<u32>(73707u, 1u, 1u, 47403u), Struct_1(vec3<f32>(-967f, -1000f, 1000f), vec4<i32>(0i, 2147483647i, -1i, -37334i), vec4<f32>(-305f, 393f, 1251f, 848f)), Struct_2(true, -313f, vec3<i32>(-39942i, 30565i, 14485i), vec4<bool>(false, true, true, true)), vec2<f32>(-1618f, 993f)), Struct_3(vec4<u32>(1u, 4294967295u, 4294967295u, 2849u), Struct_1(vec3<f32>(-448f, 281f, 867f), vec4<i32>(-2519i, 2147483647i, -6159i, -20615i), vec4<f32>(433f, -578f, 775f, 795f)), Struct_2(true, 180f, vec3<i32>(1i, -38162i, 1i), vec4<bool>(true, false, false, false)), vec2<f32>(-1041f, -762f)));

var<private> global4: array<vec3<u32>, 32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<u32>) -> vec4<i32> {
    global4 = array<vec3<u32>, 32>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global2.b.c.ywz + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(arg_1.b.a))))))), -((arg_0.b << (vec4<u32>(arg_2.x, 20490u, 7995u, 21530u) % vec4<u32>(32u))) >> (arg_1.a % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -338f), -2629f, _wgslsmith_f_op_f32(arg_1.c.b - 114f), global2.b.a.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b.c * vec4<f32>(-169f, global2.d.x, -1823f, arg_0.a.x)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.c.x, -1164f, global2.c.b, -632f), arg_0.c))))));
    return -arg_0.b | (vec4<i32>(-1i) * -reverseBits(global2.b.b & arg_0.b));
}

fn func_2() -> vec4<bool> {
    let var_0 = global2.b;
    global0 = array<u32, 3>();
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1099f, global2.d.x, var_0.c.x) * global2.b.c.xzz) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-914f, var_0.c.x, global2.b.c.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, global2.d.x, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(1000f, -1920f), var_0.c.x, 484f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.c.x, 931f, -1102f) - var_0.c.zxx)))))), ~func_3(global2.b, Struct_3(vec4<u32>(global2.a.x, 1u, 46509u, 1u), Struct_1(var_0.a, global2.b.b, global2.b.c), Struct_2(false, var_0.c.x, vec3<i32>(var_0.b.x, global2.c.c.x, var_0.b.x), global2.c.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.c.x))), _wgslsmith_clamp_vec3_u32(global4[_wgslsmith_index_u32(u_input.a, 32u)], _wgslsmith_sub_vec3_u32(global2.a.ywy, global4[_wgslsmith_index_u32(12527u, 32u)]), vec3<u32>(global0[_wgslsmith_index_u32(1u, 3u)], 42083u, 4294967295u))), var_0.c);
    var var_2 = Struct_3(countOneBits(vec4<u32>(firstLeadingBit(1300u), _wgslsmith_dot_vec2_u32(vec2<u32>(17962u, 0u), global2.a.xw), countOneBits(62872u), min(u_input.a, 18656u)) ^ abs(abs(global2.a))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, 850f, var_1.c.x), vec3<f32>(-317f, var_0.a.x, global2.b.a.x), global2.c.d.zxy)) - _wgslsmith_f_op_vec3_f32(-var_1.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.a.x, var_0.c.x, 350f) + vec3<f32>(861f, 1000f, 1629f)) * _wgslsmith_f_op_vec3_f32(var_0.c.yyy - vec3<f32>(var_0.a.x, global2.c.b, 1271f)))), countOneBits(-(~var_1.b)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 381f, -794f, var_1.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(583f, global2.c.b, 372f, -841f)))))), Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1189f))), select(vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, 1i), -1i, var_0.b.x), var_0.b.wwy, !vec3<bool>(global2.c.d.x, false, false)), select(!global2.c.d, vec4<bool>(global2.c.d.x, true, true, !global2.c.a), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, -1446f))))));
    var var_3 = global2.c.d.x;
    return vec4<bool>(false, any(vec4<bool>(true, ~(-2147483647i) >= -u_input.d, global2.c.a, 1i > (var_1.b.x & var_0.b.x))), var_2.c.d.x, any(select(vec2<bool>(any(vec4<bool>(false, false, global2.c.a, true)), var_2.c.a && true), var_2.c.d.ww, vec2<bool>(any(vec3<bool>(true, true, false)), true))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = global2.b;
    var var_1 = !(!func_2().x);
    let var_2 = min(_wgslsmith_mult_vec2_i32(vec2<i32>(~(-1i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(27836u, global2.a.x), global2.a.xw) % 32u), var_0.b.x), ~(-select(vec2<i32>(arg_0.c.x, 21262i), arg_0.c.zx, vec2<bool>(true, arg_0.a)))), select(arg_0.c.xy, _wgslsmith_clamp_vec2_i32(var_0.b.yw, -vec2<i32>(global2.c.c.x, -2147483647i), ~arg_0.c.xz), vec2<bool>(!any(arg_0.d.yx), 0u <= global0[_wgslsmith_index_u32(54161u, 3u)])));
    let var_3 = _wgslsmith_f_op_f32(min(-612f, -457f));
    let var_4 = global3[_wgslsmith_index_u32((countOneBits(max(abs(global2.a.x), global2.a.x)) << (54181u % 32u)) >> (select(4294967295u, 4294967295u, global2.c.a) % 32u), 3u)];
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(f32(-1f) * -589f)), _wgslsmith_f_op_f32(-var_0.c.x), arg_0.a)))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global1 = false;
    let var_0 = Struct_2(any(vec3<bool>((global2.c.d.x & global2.c.a) & (true & global2.c.a), all(vec4<bool>(true, false, global2.c.d.x, false)), false)), _wgslsmith_f_op_f32(func_4(Struct_2(!(!global2.c.d.x), 324f, (global2.c.c >> (vec3<u32>(global0[_wgslsmith_index_u32(53241u, 3u)], arg_0, 4294967295u) % vec3<u32>(32u))) | _wgslsmith_add_vec3_i32(vec3<i32>(-14347i, -62502i, u_input.d), global2.c.c), func_2()), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 22922u, arg_0), vec3<u32>(0u, 1u, arg_0) ^ countOneBits(global4[_wgslsmith_index_u32(0u, 32u)])))), min(vec3<i32>(-2147483647i, -select(u_input.c.x, 39448i, global2.c.d.x), _wgslsmith_mod_i32(firstLeadingBit(u_input.c.x), 1i)), global2.b.b.yyx), !func_2());
    var var_1 = false;
    let var_2 = global2.b;
    var var_3 = global3[_wgslsmith_index_u32(4294967295u, 3u)];
    return var_0;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_3 {
    let var_0 = true;
    var var_1 = var_0;
    let var_2 = 782f;
    global2 = global3[_wgslsmith_index_u32(0u, 3u)];
    global2 = global3[_wgslsmith_index_u32(~(~0u), 3u)];
    return Struct_3(global2.a, global2.b, Struct_2(!(!var_0), arg_1.b, ~_wgslsmith_div_vec3_i32(global2.c.c, firstLeadingBit(global2.b.b.xzw)), !(!(!vec4<bool>(false, true, false, var_0)))), _wgslsmith_f_op_vec2_f32(ceil(global2.b.a.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b.c;
    let var_1 = global2.c;
    global4 = array<vec3<u32>, 32>();
    global0 = array<u32, 3>();
    let var_2 = global3[_wgslsmith_index_u32(28293u, 3u)];
    global1 = false;
    let var_3 = func_5(global2.b.b.x, func_1(~u_input.a << (u_input.a % 32u)), var_1.a, 0u);
    var var_4 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~max(vec3<u32>(58384u, u_input.b, 32247u), vec3<u32>(1u, global2.a.x, u_input.b)))), var_2.b.c.x, var_2.b.b.zyz, func_5(~_wgslsmith_mod_i32(-2147483647i, u_input.d), Struct_2(-1i < var_3.b.b.x, _wgslsmith_f_op_f32(abs(var_1.b)), global2.b.b.zzx, vec4<bool>(var_4.a, true, var_1.a, true)), (var_3.a.x | var_2.a.x) < global2.a.x, global0[_wgslsmith_index_u32(1u, 3u)]).c.c.zx ^ max(~func_1(u_input.a).c.yx, vec2<i32>(u_input.d, -u_input.d)));
}

