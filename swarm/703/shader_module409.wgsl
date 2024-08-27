struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(0i, 0i, 0i), vec3<i32>(2147483647i, -1i, -38193i), vec3<i32>(-4237i, 1i, -1i));

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 8>;

var<private> global3: array<Struct_2, 26>;

var<private> global4: u32 = 1u;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> vec4<i32> {
    global0 = array<vec3<i32>, 3>();
    let var_0 = Struct_2(arg_1.c, u_input.a.x, Struct_1((firstLeadingBit(14792i) & select(0i, arg_1.d, arg_2)) != min(_wgslsmith_mult_i32(0i, 0i), u_input.a.x)));
    let var_1 = !vec4<bool>(u_input.c.x < ~(~0u), true, arg_1.c.a, arg_2 & true);
    global0 = array<vec3<i32>, 3>();
    var var_2 = -55902i;
    return _wgslsmith_div_vec4_i32(abs(vec4<i32>(arg_1.d, u_input.b, u_input.d, -21286i)), firstTrailingBit(vec4<i32>(abs(19326i), -1i, _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, arg_1.d), select(2147483647i, -87877i, var_0.a.a)), 1i)));
}

fn func_2() -> Struct_1 {
    global4 = 0u;
    var var_0 = ~select(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 4085i, 2147483647i, u_input.b), vec4<i32>(-2920i, u_input.d, -14378i, 1i)), _wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.d, 2147483647i, u_input.b, u_input.a.x), vec4<i32>(1i, u_input.d, 1i, -5967i)), -vec4<i32>(-10773i, 2147483647i, u_input.a.x, u_input.d)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, false)))) & ~(~(func_3(1000f, Struct_3(5843u, vec4<bool>(true, true, true, false), Struct_1(false), -2147483647i, vec2<f32>(-2664f, 984f)), true) >> (firstLeadingBit(global2[_wgslsmith_index_u32(11784u, 8u)]) % vec4<u32>(32u))));
    return Struct_1(any(vec4<bool>(select(true, true, true), _wgslsmith_f_op_f32(step(1319f, 845f)) > _wgslsmith_f_op_f32(-129f - -1296f), all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)))));
}

fn func_1(arg_0: f32) -> bool {
    global2 = array<vec4<u32>, 8>();
    let var_0 = vec4<u32>(abs(u_input.c.x), 4294967295u & ~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~(~(~17566u)), u_input.c.x);
    let var_1 = func_2();
    let var_2 = _wgslsmith_add_vec2_i32(abs(~u_input.a.zx ^ u_input.a.zz), countOneBits(_wgslsmith_div_vec2_i32(-vec2<i32>(-1i, u_input.a.x), select(u_input.a.zz, vec2<i32>(15602i, -6867i), select(vec2<bool>(var_1.a, true), vec2<bool>(false, false), var_1.a)))));
    let var_3 = !vec2<bool>(all(!(!vec3<bool>(false, var_1.a, false))), all(vec3<bool>(any(vec4<bool>(true, var_1.a, var_1.a, false)), !var_1.a, !var_1.a)));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> StorageBuffer {
    global1 = ~u_input.c.x;
    return StorageBuffer(max(-_wgslsmith_mult_vec4_i32(abs(vec4<i32>(58121i, arg_1.b, u_input.a.x, -6210i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<i32>(-2147483647i, arg_1.b, u_input.b, 5626i))), vec4<i32>(_wgslsmith_mult_i32(0i, -16961i), u_input.a.x, -30776i, 1i) & firstLeadingBit(vec4<i32>(u_input.b, arg_1.b, u_input.a.x, u_input.d) >> (global2[_wgslsmith_index_u32(u_input.c.x, 8u)] % vec4<u32>(32u)))), -vec3<i32>(u_input.a.x ^ -1i, reverseBits(1i), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 8>();
    let x = u_input.a;
    s_output = func_4(Struct_1(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 419f)))), global3[_wgslsmith_index_u32(40856u ^ _wgslsmith_dot_vec4_u32(abs(global2[_wgslsmith_index_u32(0u, 8u)]) | vec4<u32>(63308u, 16293u, 67217u, u_input.c.x), vec4<u32>(u_input.c.x ^ 1u, u_input.c.x, _wgslsmith_mult_u32(0u, 4294967295u), ~u_input.c.x)), 26u)]);
}

