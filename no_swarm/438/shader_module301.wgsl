struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<f32, 3>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    return 78745u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4) -> u32 {
    var var_0 = min(arg_1.c.a.x, arg_1.c.a.x);
    var var_1 = arg_1.c.a;
    var var_2 = Struct_1(arg_1.b.a, vec3<u32>(_wgslsmith_sub_u32(arg_0.a.x, ~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 0u))), 37933u, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, 1u) & func_3(Struct_2(vec2<u32>(76881u, arg_1.d.a.x)), vec3<bool>(true, false, false), 1u), 0u)), _wgslsmith_f_op_vec4_f32(arg_1.b.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(139f, arg_1.b.c.x, 283f, 2880f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.c.x, arg_1.a.a.x, 758f, arg_1.a.c.x) + vec4<f32>(arg_1.a.c.x, 622f, 300f, global2[_wgslsmith_index_u32(u_input.b.x, 3u)])), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true))) * vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 3u)] * arg_1.b.c.x), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(1u, 3u)], 706f)), _wgslsmith_f_op_f32(step(-1845f, arg_1.b.a.x)), _wgslsmith_f_op_f32(-arg_1.a.c.x)))));
    var var_3 = Struct_4(global1[_wgslsmith_index_u32(34010u, 26u)], Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-995f, 1000f, -1512f, _wgslsmith_f_op_f32(-284f * -253f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(390f, global2[_wgslsmith_index_u32(15403u, 3u)], var_2.c.x, arg_1.b.a.x)))), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_1.a.b.x, 4294967295u), vec3<u32>(arg_1.b.b.x, arg_0.a.x, 82987u))), arg_1.b.c), arg_1.c, arg_1.d);
    let var_4 = arg_1.a.a.x;
    return ~49995u;
}

fn func_4(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 4294967295u)), arg_0.x, abs(arg_0.x)), _wgslsmith_div_vec3_u32(arg_0.zxx, ~select(u_input.b.xwz, firstTrailingBit(vec3<u32>(0u, u_input.b.x, 70853u)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))));
    var var_1 = global2[_wgslsmith_index_u32(16534u, 3u)];
    let var_2 = (max(u_input.a, firstTrailingBit(~vec3<i32>(global0.a.x, global0.a.x, 0i))) | vec3<i32>(_wgslsmith_mult_i32(global0.a.x, -38270i) >> (~11630u % 32u), firstTrailingBit(global0.a.x), global0.a.x)) >> (min(~(~vec3<u32>(u_input.b.x, 27385u, arg_0.x)) ^ max(u_input.b.ywy, _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 4294967295u, arg_0.x), arg_0.ywy)), _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, arg_0.x), u_input.b.wwz), arg_0.wyx)) % vec3<u32>(32u));
    global1 = array<Struct_1, 26>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(arg_0, u_input.b), 3u)], _wgslsmith_f_op_f32(round(733f)), true)), 911f, 1000f));
    return !vec3<bool>(true, !((var_0.x & var_0.x) != 4294967295u), true);
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_mod_i32(32123i, 15952i);
    var var_1 = func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(select(~33245u, u_input.b.x, false), countOneBits(0u) << (func_2(Struct_2(vec2<u32>(arg_0.b.b.x, u_input.b.x)), Struct_4(global1[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(vec4<f32>(-849f, global2[_wgslsmith_index_u32(1u, 3u)], arg_1, -336f), vec3<u32>(arg_0.b.b.x, 0u, 61551u), arg_0.a.c), arg_0.c, Struct_2(u_input.b.wx))) % 32u), arg_0.b.b.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(9290u, arg_0.b.b.x), _wgslsmith_dot_vec2_u32(arg_0.a.b.xx, arg_0.b.b.yx))), _wgslsmith_mult_vec4_u32(abs(u_input.b) & vec4<u32>(u_input.b.x, u_input.b.x, 48629u, arg_0.d.a.x), vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 72106u, 0u), u_input.b), arg_0.b.b.x, _wgslsmith_mod_u32(u_input.b.x, 0u)))));
    var_0 = -2147483647i;
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(~_wgslsmith_clamp_i32(global0.a.x ^ -2147483647i, max(-31619i, u_input.a.x), _wgslsmith_add_i32(2147483647i, arg_0.c.a.x)), arg_0.c.a.x), vec2<i32>(firstTrailingBit(0i), _wgslsmith_mod_i32(-41719i, arg_0.c.a.x)) & select(global0.a, _wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.x, u_input.e.x), ~vec2<i32>(18088i, -7175i)), any(var_1.zz)));
    let var_3 = !all(!var_1.xz);
    return true;
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> StorageBuffer {
    global2 = array<f32, 3>();
    return StorageBuffer(~9192u, arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 3>();
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), ~u_input.b.x, ~(~4294967295u)), 48155u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 66671u, 57740u), ~u_input.b.www) >> (select(u_input.b.yyw, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 60439u, u_input.b.x), u_input.b.yzz, u_input.b.xww), vec3<bool>(true, true, true)) % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, ~u_input.b.x, 14382u)), _wgslsmith_clamp_u32(u_input.b.x ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), abs(u_input.b.ywx)), 1u, abs(u_input.b.x)));
    global2 = array<f32, 3>();
    let x = u_input.a;
    s_output = func_5(vec3<u32>(select(var_0.x, select(0u, ~26985u, func_1(Struct_4(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)], Struct_3(vec2<i32>(2147483647i, global0.a.x)), Struct_2(vec2<u32>(78115u, 35235u))), 1000f)), !(52103i < u_input.d.x)), abs(~(u_input.b.x << (86791u % 32u))), _wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec2_u32(~u_input.b.yx, vec2<u32>(36573u, 95132u)))), min(select(~(-1i), global0.a.x, true), 2147483647i), Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(~u_input.b.x, 3u)], _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(var_0.x, 3u)])), global2[_wgslsmith_index_u32(~49835u, 3u)], global2[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 3u)]), ~(~firstTrailingBit(vec3<u32>(62659u, u_input.b.x, 39238u))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(u_input.b.x, 3u)])), _wgslsmith_f_op_f32(trunc(-2315f))), -986f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 3u)]), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~19948u, _wgslsmith_mod_u32(33868u, 22262u), _wgslsmith_dot_vec2_u32(var_0.zz, vec2<u32>(89477u, 4294967295u))), 3u)])), ~vec3<u32>(u_input.b.x, func_3(Struct_2(vec2<u32>(15749u, 23657u)), vec3<bool>(true, true, false), var_0.x), 1u) << (vec3<u32>(_wgslsmith_mult_u32(1u << (u_input.b.x % 32u), u_input.b.x), 4294967295u, var_0.x) % vec3<u32>(32u)));
}

