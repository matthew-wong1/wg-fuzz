struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec4<i32>;

var<private> global2: vec4<i32> = vec4<i32>(4339i, -1i, 0i, -20838i);

var<private> global3: array<vec2<u32>, 12>;

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<i32> {
    return max(firstLeadingBit(vec4<i32>(global1.x, 2147483647i, -3320i & global1.x, abs(~global2.x))), vec4<i32>(_wgslsmith_mult_i32(-reverseBits(u_input.b), _wgslsmith_mod_i32(global2.x, 0i) | 2147483647i), -2147483647i, abs(_wgslsmith_div_i32(~1i, -2147483647i)), global2.x));
}

fn func_2() -> Struct_1 {
    let var_0 = select(vec4<i32>(countOneBits(~31795i), _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(7756i | u_input.a.x, 26507i)), 1i, 2147483647i), _wgslsmith_mult_vec4_i32(select(~vec4<i32>(global2.x, -5441i, global2.x, u_input.a.x), select(abs(vec4<i32>(2147483647i, u_input.b, -18738i, -2147483647i)), func_3(), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false)), vec4<i32>(global2.x, global2.x, -_wgslsmith_mult_i32(-1i, u_input.d.x), -30012i)), true);
    var var_1 = ~_wgslsmith_clamp_i32(abs(min(-2147483647i, 45149i)), ~_wgslsmith_div_i32(var_0.x, -29425i), 1i);
    let var_2 = vec4<i32>(14095i, _wgslsmith_add_i32(~(-(u_input.d.x ^ global1.x)), select(18766i, u_input.d.x, true)), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x >> (u_input.c % 32u), _wgslsmith_clamp_i32(global1.x, global2.x, global2.x), var_0.x & var_0.x, 1i), var_0), _wgslsmith_div_i32(-71347i, global1.x));
    let var_3 = !vec4<bool>(any(vec2<bool>(true, select(true, true, false))), !any(vec3<bool>(false, true, false)) & false, all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true)), true != ((u_input.c & 0u) >= (1u >> (u_input.c % 32u))));
    global0 = 0u;
    return global4[_wgslsmith_index_u32(u_input.c, 30u)];
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> StorageBuffer {
    global1 = vec4<i32>(global1.x, global2.x, global1.x, global2.x);
    global1 = -abs(countOneBits(vec4<i32>(-global2.x, _wgslsmith_mod_i32(global2.x, -58914i), reverseBits(1i), u_input.b)));
    var var_0 = arg_2.a.x;
    var var_1 = func_2();
    let var_2 = 0u;
    return StorageBuffer(firstTrailingBit(global2.x), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~20908u, countOneBits(57039u) >> (~firstLeadingBit(u_input.c) % 32u)), 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 12>();
    var var_0 = select(reverseBits(vec2<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(global2.x, -2147483647i), -1i))), -vec2<i32>(global1.x, u_input.a.x), vec2<bool>(!all(vec4<bool>(true, true, true, true)), true));
    var var_1 = Struct_1(vec4<bool>(any(vec2<bool>(true, true)), select(any(vec2<bool>(true, false)) && true, true, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false))), !(!(u_input.c < 4294967295u)), firstLeadingBit(~4294967295u) == u_input.c));
    let x = u_input.a;
    s_output = func_1(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, ~(~_wgslsmith_mod_u32(u_input.c, u_input.c))), 30u)], 1f, Struct_1(select(vec4<bool>(!var_1.a.x, var_1.a.x, true, var_1.a.x), !(!var_1.a), any(var_1.a.xx) || any(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true)))));
}

