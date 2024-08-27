struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(105820u, 24956u, 4294967295u, 74417u, 0u, 0u, 1u, 62482u, 1u, 67515u, 0u, 0u, 4294967295u, 149125u, 4294967295u, 27529u, 45158u, 20583u, 68119u, 71113u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_3) -> bool {
    var var_0 = Struct_3(countOneBits(vec2<i32>(arg_3.a.x, u_input.b)));
    var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-475f, 554f), vec2<f32>(792f, -1800f), vec2<bool>(false, true))), vec2<f32>(1157f, 375f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1217f, 1169f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 491f) - vec2<f32>(1451f, -502f))))));
    var_0 = Struct_3(-vec2<i32>(u_input.b, 0i));
    let var_2 = Struct_5(Struct_1(min(_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_1.x, u_input.a, 4294967295u), global0[_wgslsmith_index_u32(~arg_1.x, 20u)]), _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_1.x, 2162u), 16644u)), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x)))), Struct_2(vec3<u32>(_wgslsmith_mult_u32(~arg_1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 20u)], 20u)] | arg_1.x), ~_wgslsmith_clamp_u32(arg_1.x, arg_1.x, 0u), ~(~arg_1.x)), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(global0[_wgslsmith_index_u32(arg_1.x, 20u)], 0u, arg_1.x, global0[_wgslsmith_index_u32(34744u, 20u)])), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, 23941u, 4294967295u, u_input.a) >> (vec4<u32>(20301u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74994u, 20u)], 20u)], 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)], 1u) % vec4<u32>(32u)), max(vec4<u32>(u_input.a, u_input.a, arg_1.x, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 20u)], arg_1.x, u_input.a, 1u)))), ~_wgslsmith_sub_u32(firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(arg_1.xz, arg_1.yy)), vec2<bool>(select(arg_2, arg_2, true), any(!vec3<bool>(arg_2, arg_2, false))), !((arg_2 | true) && arg_2)), vec3<u32>(22356u, firstTrailingBit(86870u), global0[_wgslsmith_index_u32(arg_1.x, 20u)]), 50697u);
    return var_2.b.d.x;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(168f, 526f), vec2<f32>(1759f, -194f), select(arg_0.yw, arg_0.zw, arg_0.x)))) * vec2<f32>(-1000f, _wgslsmith_div_f32(859f, -1540f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(1f, 1f)));
    var var_1 = select(!vec2<bool>(false, select(arg_0.x, all(vec4<bool>(true, true, arg_0.x, false)), arg_0.x)), vec2<bool>(true, true), vec2<bool>(arg_0.x, !(!any(arg_0.yy))));
    global0 = array<u32, 20>();
    let var_2 = var_0.x;
    var_1 = vec2<bool>(func_3(u_input.b, abs(vec3<u32>(~62915u, global0[_wgslsmith_index_u32(1u, 20u)], 1u)), true || !(var_1.x || false), Struct_3(vec2<i32>(_wgslsmith_add_i32(-2147483647i, 53974i), 6309i))), all(vec4<bool>(var_1.x, false, any(vec4<bool>(false, arg_0.x, var_1.x, true)), all(vec2<bool>(var_1.x, true)))) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(971f - var_2)) != var_2));
    return var_1.x;
}

fn func_1() -> i32 {
    let var_0 = min(min(_wgslsmith_mult_vec2_i32(vec2<i32>(~u_input.b, ~u_input.b), vec2<i32>(0i, min(u_input.b, 0i))), select(vec2<i32>(37884i, u_input.b), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(u_input.b, u_input.b)), select(func_2(vec4<bool>(true, true, true, false)), true, all(vec2<bool>(true, true))))), vec2<i32>(~(-1i), _wgslsmith_mult_i32(abs(reverseBits(26911i)), min(-40037i << (global0[_wgslsmith_index_u32(8222u, 20u)] % 32u), firstLeadingBit(u_input.b)))));
    let var_1 = ~(vec4<i32>(-u_input.b, ~(-u_input.b), 2147483647i, 1i) >> (vec4<u32>(14356u, _wgslsmith_mod_u32(~0u, _wgslsmith_mod_u32(3000u, u_input.a)), ~_wgslsmith_clamp_u32(0u, global0[_wgslsmith_index_u32(u_input.a, 20u)], 30640u), global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.a), 20u)]) % vec4<u32>(32u)));
    global0 = array<u32, 20>();
    let var_2 = false;
    global0 = array<u32, 20>();
    return firstLeadingBit(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0;
    var var_2 = Struct_5(Struct_1(reverseBits(~(1u >> (0u % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1392f, 1053f, -217f), vec3<f32>(-571f, 497f, -1199f)))))), Struct_2(_wgslsmith_add_vec3_u32(~(vec3<u32>(77093u, global0[_wgslsmith_index_u32(12904u, 20u)], u_input.a) << (vec3<u32>(global0[_wgslsmith_index_u32(37894u, 20u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 20u)]) % vec3<u32>(32u))), firstLeadingBit(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 20u)], 48467u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)]))), countOneBits(~0u), ~u_input.a, vec2<bool>(true, true), select(true, !all(vec2<bool>(true, false)), func_2(vec4<bool>(true, true, true, true)))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(~30621u, _wgslsmith_mult_u32(1u, u_input.a), ~u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(22991u, 20u)], 4294967295u) | vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(14628u, 20u)]), vec3<u32>(global0[_wgslsmith_index_u32(51217u, 20u)], 4294967295u, global0[_wgslsmith_index_u32(5529u, 20u)])), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(88120u, 4294967295u, false), 20u)], 20u)], ~u_input.a, 51521u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(~35148u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11497u, 20u)], 20u)]), _wgslsmith_div_vec2_u32(select(vec2<u32>(global0[_wgslsmith_index_u32(2801u, 20u)], u_input.a), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(104490u, 20u)]) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), vec2<bool>(true, true)), select(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], 11889u), func_3(-55612i, vec3<u32>(u_input.a, 12760u, global0[_wgslsmith_index_u32(20u, 20u)]), true, Struct_3(vec2<i32>(0i, -34897i)))))));
    let var_3 = true;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.b.x * -1830f), _wgslsmith_f_op_f32(-var_2.a.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.b.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) * _wgslsmith_f_op_f32(var_2.a.b.x * _wgslsmith_f_op_f32(exp2(var_2.a.b.x))))), _wgslsmith_f_op_f32(-959f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -208f, -506f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1240f, _wgslsmith_f_op_f32(f32(-1f) * -809f)))) * var_4.xy));
}

