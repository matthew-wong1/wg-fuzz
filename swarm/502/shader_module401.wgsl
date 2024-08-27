struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1330f);

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<u32, 19> = array<u32, 19>(0u, 41215u, 34714u, 17767u, 4294967295u, 9063u, 26719u, 4294967295u, 10449u, 25832u, 71017u, 4294967295u, 1u, 0u, 8104u, 4294967295u, 0u, 89590u, 1u);

var<private> global3: array<vec4<bool>, 7>;

var<private> global4: Struct_1;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec4<i32> {
    let var_0 = _wgslsmith_sub_vec4_i32((~(-vec4<i32>(arg_0, arg_0, arg_0, arg_0)) & _wgslsmith_mod_vec4_i32(vec4<i32>(38904i, arg_0, arg_0, -2147483647i) >> (vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], u_input.a, global2[_wgslsmith_index_u32(37134u, 19u)]) % vec4<u32>(32u)), abs(vec4<i32>(arg_0, 7692i, arg_0, 0i)))) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(global2[_wgslsmith_index_u32(1u, 19u)], u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 19u)], 19u)]), vec3<u32>(u_input.a, u_input.a, 1u)), ~vec3<u32>(1u, u_input.a, 1u)), global2[_wgslsmith_index_u32(u_input.a, 19u)], 4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47240u, u_input.a), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], global2[_wgslsmith_index_u32(1u, 19u)])), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(30163u, 19u)], u_input.a)))) % vec4<u32>(32u)), max(~(-firstLeadingBit(vec4<i32>(-16372i, 12419i, arg_0, arg_0))), reverseBits(vec4<i32>(arg_0, -1i, arg_0, arg_0)) & (min(vec4<i32>(2147483647i, 2147483647i, 2147483647i, arg_0), vec4<i32>(-26221i, -1i, arg_0, -1i)) & vec4<i32>(45160i, -2147483647i, 12249i, 35317i))));
    return _wgslsmith_add_vec4_i32(countOneBits(var_0), -vec4<i32>(_wgslsmith_mult_i32(-1i, 48641i), abs(-2147483647i), ~2147483647i, select(var_0.x, -1i, true))) & var_0;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a)) + _wgslsmith_f_op_f32(trunc(global4.a))) + global4.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - 680f)))));
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a)) + _wgslsmith_div_f32(118f, global4.a))), _wgslsmith_f_op_f32(global4.a - global0.a)));
    global1 = array<Struct_1, 22>();
    var var_3 = _wgslsmith_mult_vec4_i32(func_3(select(-1i, 1i, true)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, ~(-81566i), 0i, i32(-1i) * -29312i), vec4<i32>(_wgslsmith_add_i32(~(-31747i), ~(-39212i)), _wgslsmith_div_i32(1i, firstLeadingBit(2147483647i)), 1i, _wgslsmith_add_i32(-2147483647i, i32(-1i) * -1i))));
    return !all(select(global3[_wgslsmith_index_u32(~max(global2[_wgslsmith_index_u32(1u, 19u)], 0u), 7u)], vec4<bool>(true, true, select(true, false, true), true), vec4<bool>(false, true, true, all(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 7u)]))));
}

fn func_1() -> vec4<u32> {
    global4 = Struct_1(_wgslsmith_f_op_f32(-2832f + global0.a));
    global3 = array<vec4<bool>, 7>();
    let var_0 = ~(~countOneBits(global2[_wgslsmith_index_u32(~(~6756u), 19u)]));
    var var_1 = -select(vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(52813i, 1i, 1i), countOneBits(vec3<i32>(52146i, 0i, -12773i))), vec3<i32>(_wgslsmith_div_i32(26234i, 19126i), select(-10491i, 10080i, true), _wgslsmith_sub_i32(1i, 0i))), vec3<bool>(!func_2(), global4.a == _wgslsmith_f_op_f32(global4.a + 754f), true));
    var var_2 = firstLeadingBit(-1i);
    return (vec4<u32>(abs(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.a, 19u)])), u_input.a, 65258u, ~(~4294967295u)) ^ vec4<u32>(firstTrailingBit(1u), 1u << (1u % 32u), 4294967295u & ~global2[_wgslsmith_index_u32(u_input.a, 19u)], abs(firstTrailingBit(var_0)))) & vec4<u32>(~(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)])), var_0, u_input.a, 21484u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = 6454u;
    var var_2 = global1[_wgslsmith_index_u32(~u_input.a, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(abs(vec4<i32>(1i, 1i, 0i, 0i))), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(0u, min(var_1, var_1), ~u_input.a, var_1)), ~(~func_1())), vec4<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(~abs(0u), 19u)]), abs(var_1), _wgslsmith_div_u32(81393u, ~(u_input.a >> (1u % 32u))), _wgslsmith_mult_u32(countOneBits(var_1), ~1u)), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, ~var_1), ~u_input.a));
}

