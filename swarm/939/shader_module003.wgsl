struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 73084u), vec2<u32>(0u, 0u), vec2<u32>(0u, 15740u), vec2<u32>(9119u, 4294967295u), vec2<u32>(4294967295u, 104889u), vec2<u32>(3066u, 75709u), vec2<u32>(46982u, 4294967295u), vec2<u32>(1u, 42469u), vec2<u32>(4294967295u, 34146u), vec2<u32>(0u, 38292u), vec2<u32>(4294967295u, 0u), vec2<u32>(304u, 76395u), vec2<u32>(105847u, 537u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 30551u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(3193u, 0u), vec2<u32>(33189u, 5350u), vec2<u32>(14247u, 95072u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> i32 {
    return _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_2.x, arg_1.x) ^ arg_1.x, u_input.e);
}

fn func_1() -> Struct_3 {
    var var_0 = 0u;
    let var_1 = Struct_3(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], ~(~_wgslsmith_div_vec2_i32(vec2<i32>(-24320i, -36766i), vec2<i32>(global0.a, 21126i))), vec4<i32>(32104i, _wgslsmith_div_i32(max(u_input.e, global1.b.a), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.a, 50503i, u_input.d, global1.a.a), vec4<i32>(u_input.d, -2147483647i, -12263i, global1.b.a))), select(global0.a, global1.b.a, true) << (firstTrailingBit(u_input.a) % 32u), u_input.d)), Struct_1(-1i));
    var var_2 = var_1.a.x;
    let var_3 = Struct_2(var_1.c, Struct_1(var_1.c.a));
    global0 = Struct_1(46913i);
    return var_1;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    return _wgslsmith_sub_u32(u_input.b.x, u_input.b.x) < _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.a, 6481u)) >> (min(global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 23u)]) % vec2<u32>(32u)), min(vec2<u32>(0u, 1u), countOneBits(vec2<u32>(75111u, 62780u)))), ~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    global0 = global1.b;
    var var_1 = vec4<bool>(func_3(func_1(), Struct_2(func_1().c, Struct_1(~2147483647i)), Struct_2(func_1().c, Struct_1(~30188i))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), true)) || true, !((func_3(Struct_3(vec4<bool>(false, false, true, true), u_input.e, Struct_1(0i)), Struct_2(Struct_1(12758i), Struct_1(-2147483647i)), Struct_2(global1.a, global1.a)) || select(true, false, true)) || false), true);
    let var_2 = vec4<bool>(true, abs(-16325i) > global0.a, all(!(!func_1().a)), _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.d, 24480i), countOneBits(vec4<i32>(u_input.e, 58263i, -1i, -3241i)))) <= min(~global1.b.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(-31488i, u_input.d), vec2<i32>(44121i, 13879i) ^ vec2<i32>(-17314i, u_input.d))));
    global1 = Struct_2(global1.b, Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, u_input.d, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a, 2147483647i, 0i), vec3<i32>(global0.a, u_input.e, global0.a))), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, global1.a.a, u_input.e, -30584i), vec4<i32>(global0.a, u_input.e, 23792i, 28798i)) >> (u_input.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d | _wgslsmith_mult_i32(i32(-1i) * -21403i, u_input.e), select(~(-vec4<i32>(1i, global0.a, 782i, global0.a)) ^ vec4<i32>(func_1().b, 2147483647i, 1i, i32(-1i) * -2147483647i), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global1.a.a, -15310i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -50116i, global0.a, u_input.e), vec4<i32>(u_input.d, -1i, 24115i, global1.b.a)))), vec4<bool>(true, var_2.x, true, false)), vec4<u32>(4294967295u, 1u, 41334u, min(~u_input.b.x, u_input.a)));
}

