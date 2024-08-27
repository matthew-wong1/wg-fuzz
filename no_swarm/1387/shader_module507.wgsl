struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 19> = array<u32, 19>(1u, 0u, 0u, 36382u, 26335u, 35532u, 27925u, 10256u, 0u, 43722u, 4294967295u, 28036u, 2030u, 38957u, 1u, 0u, 1u, 68221u, 22216u);

var<private> global2: array<i32, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = -831f;
    var var_1 = _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0)), -382f))))));
    var var_2 = min(_wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(u_input.a), ~_wgslsmith_mult_u32(u_input.a, 4294967295u), u_input.a), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(17620u, 19u)], firstTrailingBit(0u) >> (~4294967295u % 32u))), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 19u)], u_input.a));
    let var_3 = 1234f;
    var var_4 = Struct_3(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(min(0i, -1i), _wgslsmith_add_i32(2147483647i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 28u)]), ~54420i), (vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25894u, 19u)], 19u)], 28u)], -2147483647i) << (vec3<u32>(global1[_wgslsmith_index_u32(2526u, 19u)], 4294967295u, 31208u) % vec3<u32>(32u))) ^ vec3<i32>(-26393i, global2[_wgslsmith_index_u32(u_input.a, 28u)], -27804i))), 61824u >= firstLeadingBit(u_input.a));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(157f * -303f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1280f + var_0))));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    global1 = array<u32, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1659f, 417f) + -1250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(427f, 800f))), _wgslsmith_f_op_f32(func_3()))));
    global0 = !(true && !any(vec3<bool>(true, true, true)));
    global1 = array<u32, 19>();
    global2 = array<i32, 28>();
    return Struct_3(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(global2[_wgslsmith_index_u32(63102u, 28u)], -49911i, -5643i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(4294967295u, 28u)], -2147483647i), select(vec3<i32>(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(10591u, 28u)], 2147483647i), vec3<i32>(-2147483647i, 23584i, global2[_wgslsmith_index_u32(4467u, 28u)]), false))) ^ select(vec3<i32>(~1i, select(-1i, global2[_wgslsmith_index_u32(2820u, 28u)], true), _wgslsmith_div_i32(48778i, -2147483647i)), vec3<i32>(i32(-1i) * -20823i, -global2[_wgslsmith_index_u32(73485u, 28u)], 1i), false), (select(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a, 28u)]), vec2<i32>(global2[_wgslsmith_index_u32(5358u, 28u)], 82067i)), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 0u), 19u)], 28u)], true) == global2[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(28233u, 1u)), 28u)]) | (_wgslsmith_mod_u32(4294967295u, abs(arg_0.a.x)) >= global1[_wgslsmith_index_u32(abs(~arg_0.b.x), 19u)]));
}

fn func_1(arg_0: i32) -> vec3<i32> {
    global1 = array<u32, 19>();
    let var_0 = func_2(Struct_1(max(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(2089u, 77485u, 58936u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(80787u, 19u)], u_input.a, u_input.a), vec3<u32>(120u, 5978u, global1[_wgslsmith_index_u32(u_input.a, 19u)]))), vec3<u32>(~global1[_wgslsmith_index_u32(9735u, 19u)], _wgslsmith_div_u32(55193u, u_input.a), u_input.a)), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38215u, 19u)], 19u)], 32437u), vec2<u32>(4145u, 5066u)) << (select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(52559u, global1[_wgslsmith_index_u32(0u, 19u)]), vec2<bool>(false, false)) % vec2<u32>(32u)))));
    global0 = var_0.b;
    global1 = array<u32, 19>();
    global0 = all(select(!vec3<bool>(any(vec2<bool>(var_0.b, true)), true, !var_0.b), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(var_0.b, var_0.b)), var_0.b, false)));
    return -vec3<i32>(-17561i, i32(-1i) * -1i, ~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 28u)]), false);
    global0 = all(!vec2<bool>(!var_0.b, var_0.b | false)) && var_0.b;
    let var_1 = var_0.a.zx;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-277f - _wgslsmith_f_op_f32(f32(-1f) * -825f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_div_f32(-2712f, 1636f)) - _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-284f - 135f), -1350f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1038f, -770f))) * _wgslsmith_f_op_f32(f32(-1f) * -277f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(916f * var_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1202f, -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 1417f, 923f) + vec3<f32>(-497f, -405f, -119f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1492f, 645f, var_2.x))))), 676f);
}

