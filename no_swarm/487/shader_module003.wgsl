struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(9833i, 14019i), vec2<i32>(-1i, 1i), vec2<i32>(78491i, 24449i), vec2<i32>(0i, 35104i), vec2<i32>(-21521i, -6439i), vec2<i32>(11149i, 1i), vec2<i32>(24096i, 40662i), vec2<i32>(-45071i, 65968i), vec2<i32>(2147483647i, -1i), vec2<i32>(19329i, 6382i), vec2<i32>(33201i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(-21666i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-62445i, 31513i), vec2<i32>(40815i, -37256i), vec2<i32>(1i, -55329i), vec2<i32>(18995i, 58376i), vec2<i32>(-20225i, 3854i));

var<private> global1: u32 = 66771u;

var<private> global2: array<i32, 17> = array<i32, 17>(34211i, 2147483647i, i32(-2147483648), -1i, 2147483647i, -69726i, 1i, 2147483647i, i32(-2147483648), 1835i, 54436i, -1i, -5583i, -72599i, i32(-2147483648), 31200i, 2147483647i);

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> vec2<bool> {
    var var_0 = vec2<u32>(~_wgslsmith_sub_u32(u_input.a, ~u_input.a), _wgslsmith_mult_u32(u_input.a & (u_input.a | 1746u), u_input.a));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(select(978f, global3.a.x, false))), _wgslsmith_f_op_f32(-global3.a.x));
    global0 = array<vec2<i32>, 20>();
    var var_2 = global3.a.x;
    let var_3 = global3.a.yz;
    return !(!vec2<bool>(true, global3.b));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<i32>) -> u32 {
    global1 = 1u;
    global2 = array<i32, 17>();
    let var_0 = arg_1.a.x;
    global3 = arg_1;
    let var_1 = arg_1;
    return ~arg_2;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: u32) -> bool {
    global3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.a.x, global3.a.x)) + -950f)), global3.a.x, -910f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global3.a.x)))))), !all(select(select(vec4<bool>(global3.b, global3.b, global3.b, global3.b), vec4<bool>(global3.b, false, true, false), global3.b), !vec4<bool>(true, false, global3.b, false), select(vec4<bool>(global3.b, true, true, global3.b), vec4<bool>(global3.b, false, global3.b, true), vec4<bool>(false, true, global3.b, true)))), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, ~arg_2, reverseBits(arg_2)) << (1u % 32u), 20u)]);
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1110f), -603f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)), _wgslsmith_f_op_f32(f32(-1f) * -936f)), func_1().x, -_wgslsmith_div_vec2_i32(u_input.b.xz, vec2<i32>(1i, arg_0.x)));
    var var_1 = Struct_1(global3.a, !global3.b, firstLeadingBit(~max(vec2<i32>(var_0.c.x, u_input.b.x), ~global3.c)));
    var var_2 = ~arg_1.yx;
    var var_3 = 572f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b;
    var var_1 = select(func_1(), vec2<bool>(true, func_1().x), vec2<bool>(func_3(~vec4<i32>(-2147483647i, 31312i, u_input.b.x, global3.c.x), vec4<u32>(abs(u_input.a), 272u ^ u_input.a, _wgslsmith_sub_u32(4294967295u, u_input.a), func_2(29429u, Struct_1(vec4<f32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x), global3.b, vec2<i32>(global2[_wgslsmith_index_u32(0u, 17u)], -62008i)), 85957u, u_input.b.www)), ~u_input.a), (-u_input.b.x & firstLeadingBit(u_input.b.x)) <= (_wgslsmith_div_i32(global3.c.x, 51307i) & (i32(-1i) * -2147483647i))));
    global2 = array<i32, 17>();
    let var_2 = min(1i, ~0i);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.a.x + global3.a.x), global3.a.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.a.x)) - -455f) + _wgslsmith_f_op_f32(abs(-120f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 1000f, true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(step(global3.a.x, -1046f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-376f)), _wgslsmith_f_op_f32(-global3.a.x)))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(global3.a)), true, global0[_wgslsmith_index_u32(~(~select(1u, 0u, !var_1.x)), 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(-52215i), min(1i, 18392i), reverseBits(var_2)) << (_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(4294967295u, 1u, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(77235u, 1u, 21386u), vec3<u32>(1769u, u_input.a, 1u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.xww, vec3<i32>(46012i, -16015i, global3.c.x)), _wgslsmith_mod_vec3_i32(u_input.b.xwz, vec3<i32>(1i, global3.c.x, u_input.b.x)), ~u_input.b.yzx) & ~abs(u_input.b.yyy)));
}

