struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(325f)), _wgslsmith_f_op_f32(round(607f)), -1102f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-138f, 638f, -1282f), vec3<f32>(731f, 236f, -264f), vec3<bool>(true, false, false)))))))));
    var var_1 = ~(~_wgslsmith_div_u32(1u, ~41375u));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(531f, -322f, var_0.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, var_0.x, var_0.x), vec3<f32>(var_0.x, 790f, -1497f), true)))))));
    var_1 = ~select(~(~35839u), max(abs(abs(5753u)), _wgslsmith_mod_u32(~45060u, 23205u << (0u % 32u))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1656f, var_0.x)) + vec3<f32>(var_0.x, -866f, var_0.x)))))));
    return vec2<bool>(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -1643f))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1090f)) - 1221f));
}

fn func_2() -> Struct_2 {
    let var_0 = 10725u;
    let var_1 = 363f;
    let var_2 = var_0 << (var_0 % 32u);
    let var_3 = u_input.a >> (firstLeadingBit(~1u) % 32u);
    let var_4 = func_3();
    return Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(759f, -1172f, var_1, var_1)))))), Struct_1(false || !(!var_4.x)), Struct_1(var_4.x));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = min(select(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(0i, u_input.a), !(!vec2<bool>(arg_1.c.a, arg_1.b.a))) >> (select(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 4294967295u), ~vec2<u32>(93950u, 1u)), vec2<u32>(1u, 1u), arg_1.c.a) % vec2<u32>(32u)), vec2<i32>(u_input.a << (~27688u % 32u), 0i) | -select(vec2<i32>(2147483647i, u_input.a), vec2<i32>(1i, 1i), u_input.a > 1i));
    return !select(select(!select(vec4<bool>(arg_1.c.a, arg_1.c.a, false, arg_1.b.a), vec4<bool>(true, false, arg_1.c.a, arg_1.c.a), vec4<bool>(true, arg_1.c.a, false, arg_1.b.a)), select(vec4<bool>(false, true, arg_1.b.a, arg_1.c.a), vec4<bool>(arg_1.c.a, false, true, false), true), !select(vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.c.a, arg_1.b.a), vec4<bool>(arg_1.c.a, false, arg_1.b.a, arg_1.b.a), vec4<bool>(false, true, arg_1.c.a, false))), !select(!vec4<bool>(arg_1.c.a, arg_1.c.a, true, arg_1.b.a), vec4<bool>(true, true, true, true), false), !(any(vec2<bool>(true, arg_1.c.a)) == arg_1.b.a));
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, 39363u), vec4<u32>(34865u, arg_1, 4294967295u, arg_1)) | ~vec4<u32>(1u, arg_1, 164246u, 1u), ~vec4<u32>(arg_1, 0u, arg_1, arg_1), func_4(_wgslsmith_f_op_f32(select(954f, -1000f, false)), func_2())), vec4<u32>(0u, countOneBits(4294967295u), 55859u, 0u)), vec4<u32>(213u, abs(1u), _wgslsmith_sub_u32(15696u, arg_1) & ~18798u, 1u) >> ((~(~vec4<u32>(arg_1, 4182u, 47637u, arg_1)) << ((~vec4<u32>(arg_1, arg_1, 19544u, 0u) | max(vec4<u32>(25844u, 25684u, 84596u, 4294967295u), vec4<u32>(61940u, 0u, arg_1, arg_1))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 86132u, 4294967295u, arg_1), vec4<u32>(arg_1, 7744u, 73052u, arg_1)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(111760u, arg_1, arg_1, arg_1), vec4<u32>(4294967295u, 4307u, arg_1, 1u)) % vec4<u32>(32u)), countOneBits(~vec4<u32>(1u, 0u, arg_1, arg_1) & countOneBits(vec4<u32>(0u, arg_1, arg_1, arg_1)))));
    let var_1 = vec3<f32>(-631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0))))), arg_0);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, var_1.x)))) - vec4<f32>(1224f, _wgslsmith_f_op_f32(min(arg_0, -2004f)), 198f, -179f))), func_2().c, Struct_1(true));
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(599f)), _wgslsmith_f_op_f32(-arg_0), -198f))), var_2.c, var_2.b);
    var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) + -388f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_f_op_f32(max(var_2.a.x, -986f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x))))), -348f, var_2.a.x), func_2().b, Struct_1(all(!vec4<bool>(var_2.b.a, true, var_2.b.a, false))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true, 4294967295u <= ~func_1(2160f, 0u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, func_2().a.x, _wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(949f + 858f), _wgslsmith_f_op_f32(select(2106f, 1000f, var_0.x)))))), Struct_1(false), func_2().b);
    var_0 = func_3();
    var var_2 = ~_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(i32(-1i) * -55306i, _wgslsmith_mod_i32(u_input.a, 52034i), firstTrailingBit(u_input.a)), -1i), u_input.a);
    let var_3 = 56561i;
    var var_4 = ~(-abs(21152i));
    var_4 = 32317i;
    let var_5 = func_2();
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(-vec4<i32>(0i, -2147483647i, -19073i, var_3) | min(vec4<i32>(-1i, 2465i, var_6, var_3), vec4<i32>(2147483647i, u_input.a, -25011i, var_3)))));
}

