struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

var<private> global1: array<f32, 1>;

var<private> global2: array<Struct_3, 17>;

var<private> global3: array<Struct_3, 29>;

var<private> global4: array<vec4<f32>, 5>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = !select(vec4<bool>(true, false != select(false, true, true), any(vec2<bool>(true, true)), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false), arg_1.a.x > _wgslsmith_clamp_i32(2147483647i, u_input.a.x, 16316i)), true);
    let var_1 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 17633i << (u_input.b % 32u), u_input.a.x, -u_input.a.x) ^ ~_wgslsmith_mult_vec4_i32(vec4<i32>(17567i, -28435i, 27372i, arg_1.a.x), vec4<i32>(u_input.a.x, 19549i, arg_1.b, -43342i)), vec4<i32>(~(u_input.a.x ^ u_input.a.x), arg_1.b, 1i, ~(-17749i))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), 480f), arg_0.x)));
    let var_3 = Struct_2(vec3<f32>(-338f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(342f, _wgslsmith_div_f32(296f, -489f)))), _wgslsmith_f_op_f32(abs(arg_0.x))), arg_0.x, u_input.a.x);
    var var_4 = abs(1u) >> (u_input.b % 32u);
    return 1u;
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = true;
    var var_1 = _wgslsmith_mult_u32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 1u)] + global1[_wgslsmith_index_u32(u_input.b, 1u)]), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(5007u, 1u)])), 683f, _wgslsmith_f_op_f32(round(-421f)))), Struct_1(select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 1i, -1i), vec3<i32>(-769i, u_input.a.x, u_input.a.x)), vec3<i32>(arg_0.a.x, -2147483647i, arg_0.a.x), true), ~65893i)), ~(71499u | _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, 11833u), 1u)));
    var var_2 = firstTrailingBit(-9715i);
    var var_3 = !(!(!all(vec2<bool>(true, true))));
    let var_4 = ~_wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(84537u, 55207u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(29264u, 12769u)));
    return arg_0.a.x;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    global3 = array<Struct_3, 29>();
    global2 = array<Struct_3, 17>();
    global3 = array<Struct_3, 29>();
    global4 = array<vec4<f32>, 5>();
    var var_0 = vec4<i32>(-(~(abs(-27839i) << (u_input.b % 32u))), -(~arg_0.a.x), 0i, _wgslsmith_mult_i32(countOneBits(min(-44816i, 2147483647i)), 0i));
    return Struct_3(-vec3<i32>(15388i, _wgslsmith_clamp_i32(var_0.x, func_2(Struct_3(vec3<i32>(u_input.a.x, arg_0.a.x, var_0.x))), -1i), -2147483647i));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_1(firstTrailingBit(~arg_3.a), -2645i);
    var var_1 = arg_1.x;
    let var_2 = u_input.a;
    let var_3 = Struct_1(-reverseBits(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(2068i, 21435i, arg_0.x)), var_0.a ^ arg_3.a)), arg_3.a.x ^ 42351i);
    var var_4 = ~vec4<i32>(var_3.b, (var_0.b >> (~arg_1.x % 32u)) >> (arg_1.x % 32u), ~(-_wgslsmith_div_i32(var_3.a.x, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, reverseBits(u_input.a.x), -1i, var_3.a.x), vec4<i32>(var_2.x, 4011i, 1i, 16953i) & _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.a.x, u_input.a.x, var_2.x, 0i), arg_0)));
    return _wgslsmith_mult_i32(select(arg_0.x, arg_0.x, any(vec3<bool>(arg_0.x != arg_3.a.x, true, true))), 0i);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: f32) -> StorageBuffer {
    global0 = array<vec3<f32>, 27>();
    global3 = array<Struct_3, 29>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.b), 17u)];
    global4 = array<vec4<f32>, 5>();
    let var_1 = select(vec2<i32>(var_0.a.x, arg_1), select(-var_0.a.yy, var_0.a.zz, vec2<bool>(true, true)), true) << (~(~abs(vec2<u32>(0u, 4294967295u))) % vec2<u32>(32u));
    return StorageBuffer(_wgslsmith_clamp_i32(var_1.x, 2147483647i, ~(~min(arg_1, var_0.a.x))), vec3<f32>(global1[_wgslsmith_index_u32(~1u, 1u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 58847u), 1u)])), _wgslsmith_f_op_f32(f32(-1f) * -1016f))), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, ~u_input.b, 0u), 1u)]))), firstTrailingBit(~abs(vec3<u32>(4294967295u, u_input.b, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<f32>, 5>();
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1171f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]))))), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(i32(-1i) * -12431i, 1i), 1i), func_4(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), ~vec4<u32>(115738u, u_input.b, u_input.b, u_input.b), vec3<u32>(1u, 0u, u_input.b) ^ vec3<u32>(46747u, u_input.b, u_input.b), func_1(global3[_wgslsmith_index_u32(2772u, 29u)])) & 40318i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-440f, 1259f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(775f)) + -375f))));
}

