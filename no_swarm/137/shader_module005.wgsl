struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-7338i, vec4<i32>(i32(-2147483648), 46036i, 0i, 428i), i32(-2147483648), Struct_1(vec2<f32>(-512f, -954f), vec2<bool>(true, true), vec2<f32>(842f, 1287f)), 16258u);

var<private> global1: i32;

var<private> global2: array<vec2<f32>, 8>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = all(vec2<bool>(arg_0.b.x, !(arg_0.c.x > _wgslsmith_f_op_f32(-1553f * global0.d.a.x))));
    let var_1 = ~(~_wgslsmith_mult_i32(61572i, global0.a) << (~countOneBits(3503u) % 32u));
    let var_2 = -_wgslsmith_mod_i32(~(-60475i), -27427i);
    global0 = Struct_2(_wgslsmith_mult_i32(-20659i, ~(-max(-18874i, 37575i))), ~_wgslsmith_div_vec4_i32(min(global0.b, ~global0.b), max(~vec4<i32>(var_2, var_2, var_2, var_2), global0.b)), ~(~(~abs(-63068i))), Struct_1(_wgslsmith_f_op_vec2_f32(step(global2[_wgslsmith_index_u32(firstTrailingBit(4572u), 8u)], global2[_wgslsmith_index_u32(47860u, 8u)])), vec2<bool>(global0.d.b.x, true & global0.d.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d.c))), u_input.a & u_input.a);
    let var_3 = Struct_2(min(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_1, -17226i, var_1), global0.b), -global0.b) << (4294967295u % 32u), global0.a), -countOneBits(-(~vec4<i32>(-19685i, 1i, var_2, global0.b.x))), global0.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_0.c + vec2<f32>(-256f, global0.d.c.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-590f, arg_0.c.x))), vec2<bool>(!arg_0.b.x, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-212f, -1321f) - global2[_wgslsmith_index_u32(global0.e, 8u)]) * _wgslsmith_div_vec2_f32(global0.d.c, vec2<f32>(arg_0.c.x, 2002f))) + vec2<f32>(-552f, _wgslsmith_f_op_f32(global0.d.c.x + -350f)))), _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(60934u, 4294967295u, 1u)), vec3<u32>(_wgslsmith_div_u32(4294967295u, 49198u), u_input.b, _wgslsmith_mult_u32(29262u, 34291u)))));
    return var_3.e;
}

fn func_2() -> u32 {
    global1 = countOneBits(~(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, global0.b.x), vec2<i32>(-37063i, global0.c)) >> (~1u % 32u))) & _wgslsmith_div_i32(~(-(~global0.a)), 1i);
    var var_0 = func_3(global0.d);
    let var_1 = Struct_2(-11573i, countOneBits(~(~(-global0.b))), -36018i, global0.d, ~(1u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(57661u, u_input.a, 26046u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(u_input.b, 49111u, u_input.b), vec3<u32>(4294967295u, u_input.b, 77839u))) % 32u)));
    global0 = Struct_2(i32(-1i) * -2147483647i, _wgslsmith_add_vec4_i32(-vec4<i32>(var_1.c, var_1.b.x, var_1.a, -1i) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(17531u, 8383u, 4294967295u, 13547u), vec4<u32>(var_1.e, var_1.e, 31657u, 17763u)) % vec4<u32>(32u)), global0.b), var_1.c, global0.d, 4294967295u);
    global1 = 12955i;
    return u_input.a;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: f32) -> vec4<i32> {
    var var_0 = select(select(select(vec2<bool>(arg_0.b.x, global0.d.b.x), arg_0.b, !(!arg_0.b)), vec2<bool>(func_2() >= 0u, !global0.d.b.x), arg_0.b), !select(vec2<bool>(global0.d.b.x, true), !arg_0.b, !arg_0.b), !arg_0.b);
    let var_1 = vec3<bool>(any(select(!select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, false, var_0.x, arg_0.b.x), vec4<bool>(arg_0.b.x, false, var_0.x, var_0.x)), !vec4<bool>(var_0.x, arg_0.b.x, global0.d.b.x, var_0.x), vec4<bool>(true, -143f <= arg_3, true, !var_0.x))), true, all(select(vec2<bool>(true, any(vec4<bool>(arg_0.b.x, arg_0.b.x, false, false))), vec2<bool>(u_input.b < 1u, !arg_0.b.x), arg_0.b.x)));
    var var_2 = Struct_2(2147483647i, select(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(30182i, arg_2.x), countOneBits(arg_2.x)), _wgslsmith_mod_i32(4816i, ~2147483647i), global0.b.x, _wgslsmith_add_i32(~global0.a, firstLeadingBit(2147483647i))), _wgslsmith_sub_vec4_i32(-abs(global0.b), ~(global0.b ^ global0.b)), vec4<bool>(all(select(var_1, vec3<bool>(false, false, var_0.x), vec3<bool>(true, false, arg_0.b.x))), arg_2.x >= -global0.c, true, ~arg_1 > 1150u)), -_wgslsmith_mult_i32(~(-2147483647i >> (u_input.a % 32u)), abs(abs(global0.c))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(232f, 2025f) * global2[_wgslsmith_index_u32(u_input.b, 8u)]), _wgslsmith_f_op_vec2_f32(select(arg_0.c, global2[_wgslsmith_index_u32(global0.e, 8u)], var_0.x)))), arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, arg_0.a.x) - vec2<f32>(200f, arg_3)) + _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(18300u, 8u)] - vec2<f32>(1173f, arg_3))) + vec2<f32>(203f, _wgslsmith_div_f32(-1031f, arg_0.a.x)))), ~24640u);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(arg_3 - -755f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.d.a.x * _wgslsmith_f_op_f32(global0.d.c.x + -1453f)))));
    var var_4 = Struct_2(1i, vec4<i32>(var_2.c, ~_wgslsmith_sub_i32(0i, var_2.c | var_2.a), 2147483647i, _wgslsmith_clamp_i32(0i, -32575i, max(_wgslsmith_div_i32(35165i, arg_2.x), global0.a))), -1i, Struct_1(vec2<f32>(var_3.x, -818f), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_3.x, arg_3), _wgslsmith_f_op_f32(arg_0.a.x * var_2.d.c.x)))), ~_wgslsmith_div_u32(13202u, _wgslsmith_mod_u32(1u, 2688u)));
    return ~(select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 35896i, -21469i), vec3<i32>(global0.a, arg_2.x, var_4.b.x)), arg_2.x, _wgslsmith_clamp_i32(global0.c, var_4.c, global0.b.x), -2147483647i), vec4<i32>(~2147483647i, var_4.c, firstTrailingBit(var_2.c), abs(2453i)), select(select(vec4<bool>(global0.d.b.x, var_2.d.b.x, var_1.x, arg_0.b.x), vec4<bool>(global0.d.b.x, var_4.d.b.x, false, false), vec4<bool>(var_2.d.b.x, global0.d.b.x, global0.d.b.x, false)), !vec4<bool>(false, false, var_0.x, var_2.d.b.x), !vec4<bool>(var_1.x, global0.d.b.x, false, var_2.d.b.x))) >> (reverseBits(vec4<u32>(42283u, ~58473u, 1u, select(arg_1, arg_1, false))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(reverseBits(global0.c), vec4<i32>(-1i, -2147483647i, _wgslsmith_sub_i32(global0.c, -41102i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(24754i, 31440i, -36446i), global0.b.wxz)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(global0.b.x >> (4294967295u % 32u), ~(-2147483647i), global0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(3664i, global0.a, 21722i, -60661i), vec4<i32>(global0.a, 1i, global0.a, global0.a))), func_1(global0.d, 0u, global0.b.xz, -1443f) << (vec4<u32>(1u, global0.e, u_input.a, 4294967295u) % vec4<u32>(32u))), ~abs(~1i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global0.d.a.x * _wgslsmith_f_op_f32(max(197f, -803f))), global0.d.c.x), select(!(!vec2<bool>(true, global0.d.b.x)), select(vec2<bool>(global0.d.b.x, global0.d.b.x), global0.d.b, global0.d.b), global0.d.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.a.x, global0.d.c.x))), ~(~global0.e));
    var var_1 = 0i ^ var_0.c;
    let var_2 = var_0;
    global2 = array<vec2<f32>, 8>();
    let var_3 = var_0.e;
    let var_4 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(max(var_2.c, -42754i)), 1i, -13001i | _wgslsmith_clamp_i32(var_0.c, var_0.a, 4619i)), reverseBits(~var_2.b.zxz));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(var_4.x, var_2.a), _wgslsmith_add_vec3_i32(-_wgslsmith_add_vec3_i32(var_4, abs(var_2.b.www)), vec3<i32>(var_4.x, -var_2.c, var_4.x) << ((vec3<u32>(1u, var_2.e, 1u) ^ ~vec3<u32>(4294967295u, 27472u, 63996u)) % vec3<u32>(32u))));
}

