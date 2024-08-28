struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<i32>;

var<private> global2: array<i32, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-593f, arg_0.a.x), _wgslsmith_f_op_f32(1150f - 1193f), _wgslsmith_div_f32(-601f, arg_0.a.x), arg_0.a.x) - _wgslsmith_f_op_vec4_f32(-arg_0.a)), global2[_wgslsmith_index_u32(global0.x, 32u)]));
    let var_1 = var_0;
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.a.x, arg_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.a.x))), var_0.a.a.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-431f, _wgslsmith_f_op_f32(-621f * 1419f), _wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(-arg_0.a.x))))), -14249i);
    let var_3 = Struct_2(var_0.a);
    let var_4 = Struct_1(var_0.a.a, 2147483647i);
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1914f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), 20381i), vec2<bool>(true, false), -2147483647i, true)) - _wgslsmith_f_op_f32(f32(-1f) * -150f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x) * _wgslsmith_div_f32(-720f, arg_2.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(func_3(arg_2, select(vec2<bool>(false, false), vec2<bool>(false, false), true), arg_2.b << (u_input.a % 32u), true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f - 121f))))) + _wgslsmith_f_op_vec4_f32(-arg_2.a));
    var var_1 = arg_1;
    global2 = array<i32, 32>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_2.a))), var_1.x));
    let var_3 = arg_2;
    return arg_2;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(func_2(~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global2[_wgslsmith_index_u32(1u, 32u)], global1.x) >> (vec3<u32>(u_input.a, 0u, global0.x) % vec3<u32>(32u)), -vec3<i32>(0i, global1.x, -2347i)), abs(-vec4<i32>(global1.x, 11103i, global2[_wgslsmith_index_u32(u_input.a, 32u)], u_input.b) & vec4<i32>(global2[_wgslsmith_index_u32(77286u, 32u)], 51808i, u_input.b, u_input.b)), Struct_1(vec4<f32>(-1537f, _wgslsmith_f_op_f32(min(2512f, -831f)), _wgslsmith_f_op_f32(464f - 1000f), _wgslsmith_f_op_f32(312f - 1331f)), _wgslsmith_clamp_i32(abs(15380i), abs(-55085i), 2147483647i))));
    global0 = _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a | u_input.a, min(global0.x, 0u))), abs(~(~(vec2<u32>(1u, u_input.a) << (vec2<u32>(15162u, 17994u) % vec2<u32>(32u))))));
    var var_1 = !all(vec2<bool>(true, false));
    var var_2 = select(vec2<i32>(select(~select(var_0.a.b, -2147483647i, false), -func_2(global2[_wgslsmith_index_u32(u_input.a, 32u)], vec4<i32>(global2[_wgslsmith_index_u32(global0.x, 32u)], global2[_wgslsmith_index_u32(64410u, 32u)], u_input.b, u_input.b), var_0.a).b, true), -2147483647i), ~vec2<i32>(22025i, -61257i), ~u_input.b > 2147483647i);
    global1 = _wgslsmith_sub_vec2_i32(select(vec2<i32>(2147483647i, -7545i), min(_wgslsmith_mod_vec2_i32(max(vec2<i32>(1i, 1251i), vec2<i32>(-1i, 1i)), vec2<i32>(u_input.b, var_2.x) >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))), abs(vec2<i32>(-5187i, -2147483647i) & vec2<i32>(var_0.a.b, var_2.x))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), all(vec4<bool>(false, true, true, true)))), -vec2<i32>(abs(u_input.b), 0i) >> (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)));
    return Struct_2(func_2(countOneBits(45672i), abs(vec4<i32>(-30124i, u_input.b, u_input.b, var_0.a.b) | vec4<i32>(77884i, global2[_wgslsmith_index_u32(15712u, 32u)], 2147483647i, global1.x)) | ((vec4<i32>(3515i, global1.x, global1.x, 2312i) >> (vec4<u32>(u_input.a, global0.x, 0u, u_input.a) % vec4<u32>(32u))) | ~vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(4294967295u, 32u)], global1.x, 2147483647i)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-759f * var_0.a.a.x), _wgslsmith_f_op_f32(var_0.a.a.x - var_0.a.a.x), _wgslsmith_f_op_f32(179f + var_0.a.a.x), _wgslsmith_f_op_f32(1836f + var_0.a.a.x)), -24547i)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, false, true, true))), vec2<bool>(arg_1.a.b <= 0i, true)), vec2<bool>(true, false)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), select(select(false, false, true) | false, true, true)), select(all(vec3<bool>(true, true, true)), false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))))));
    var var_1 = true | !(true | any(select(vec2<bool>(var_0.x, var_0.x), var_0, var_0.x)));
    global1 = firstLeadingBit(max(firstTrailingBit(~abs(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 32u)], u_input.b))), abs(~vec2<i32>(global2[_wgslsmith_index_u32(1u, 32u)], -20692i)) & vec2<i32>(-global2[_wgslsmith_index_u32(5453u, 32u)], arg_0.a.b)));
    var var_2 = !(all(!select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, true, var_0.x), true)) && true);
    global2 = array<i32, 32>();
    return arg_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    let var_0 = vec2<i32>((-19825i ^ arg_0.b) | global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~global0.x), 32u)], u_input.b);
    global0 = vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(global0.x), u_input.a ^ countOneBits(4755u)) & reverseBits(reverseBits(~u_input.a)), u_input.a);
    global0 = vec2<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.a, u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, 4294967295u), vec3<u32>(global0.x, global0.x, 55782u)))) & vec2<u32>(66596u, 55135u);
    let var_1 = countOneBits(~min(select(select(vec2<u32>(global0.x, u_input.a), vec2<u32>(u_input.a, u_input.a), true), vec2<u32>(1u, 46931u) ^ vec2<u32>(global0.x, u_input.a), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 0u))));
    let var_2 = func_4(Struct_2(func_1().a), Struct_2(func_4(arg_1, arg_1, ~0u ^ _wgslsmith_sub_u32(var_1.x, 3881u), 504f)), u_input.a, 952f);
    return -1099f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~(~global0.x));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(360f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1267f)), _wgslsmith_f_op_f32(f32(-1f) * -124f))), _wgslsmith_f_op_f32(func_5(func_4(func_1(), func_1(), ~u_input.a, -848f), func_1(), vec4<f32>(341f, _wgslsmith_div_f32(-433f, -1064f), -161f, -863f))), 2178f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1300f, 1095f, -546f, -1184f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(901f, _wgslsmith_f_op_f32(-287f + 913f), -968f, -1000f))));
    let var_3 = abs(vec4<i32>(_wgslsmith_add_i32(u_input.b & global2[_wgslsmith_index_u32(var_0, 32u)], -global2[_wgslsmith_index_u32(var_0, 32u)]) >> (var_0 % 32u), ~global2[_wgslsmith_index_u32(var_0, 32u)], _wgslsmith_sub_i32(_wgslsmith_mod_i32(min(50356i, global1.x), u_input.b ^ 26665i), -1i), -global2[_wgslsmith_index_u32(~reverseBits(var_0), 32u)]));
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-200f, var_4.a.a.x, ~_wgslsmith_div_u32(var_0 >> (u_input.a % 32u), ~(~global0.x)), var_4.a.b);
}

