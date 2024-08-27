struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(447f);

var<private> global1: array<f32, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_1(global0.a);
    global1 = array<f32, 22>();
    var var_1 = abs(75085u);
    let var_2 = vec2<i32>((u_input.d.x << ((8088u >> (1u % 32u)) % 32u)) >> ((48085u ^ countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.yy))) % 32u), 2147483647i);
    let var_3 = u_input.a;
    return _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~var_3.xz, u_input.a.yz), ~var_3.x), 22u)] - global0.a);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    global1 = array<f32, 22>();
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d.wwy, ~u_input.d.zww), vec3<i32>(_wgslsmith_sub_i32(59591i, -52017i), ~firstTrailingBit(~(-1i)), u_input.d.x));
    global1 = array<f32, 22>();
    let var_1 = vec3<bool>(arg_1.x, !arg_1.x, arg_1.x);
    var var_2 = select(select(select(vec2<bool>(true, !var_1.x), !(!vec2<bool>(arg_1.x, var_1.x)), !any(arg_1)), vec2<bool>(true, !var_1.x), vec2<bool>(select(arg_1.x, var_1.x, false) || var_1.x, !(!var_1.x))), var_1.xz, true);
    return u_input.d;
}

fn func_1() -> StorageBuffer {
    var var_0 = vec2<u32>(~u_input.a.x, ~0u);
    var var_1 = vec2<i32>(-34522i, ~_wgslsmith_div_i32(-u_input.d.x, u_input.c));
    var var_2 = Struct_1(253f);
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, -1708f) * _wgslsmith_f_op_f32(var_2.a - var_2.a))), _wgslsmith_f_op_f32(1044f * _wgslsmith_f_op_f32(func_2(Struct_1(global0.a), 2147483647i, Struct_2(2147483647i))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(global0.a)));
    return StorageBuffer(_wgslsmith_mod_i32(0i, -(u_input.c ^ _wgslsmith_mod_i32(u_input.d.x, 0i))), abs(~(~func_3(vec4<f32>(global0.a, -378f, -2141f, var_2.a), vec4<bool>(true, false, true, true), -2147483647i, Struct_1(global1[_wgslsmith_index_u32(26435u, 22u)])))), _wgslsmith_div_f32(183f, -1550f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(433f)), _wgslsmith_f_op_f32(-global0.a)))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var_0 = vec4<i32>(-1i) * -countOneBits(~vec4<i32>(-2147483647i, 2147483647i, var_0.x, u_input.c));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-1i, 18423i)), var_0.zw << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))), max(~vec2<i32>(u_input.c, u_input.c), countOneBits(u_input.d.ww))));
    global1 = array<f32, 22>();
    let var_2 = global0.a;
    let var_3 = ~(_wgslsmith_sub_u32(u_input.a.x, u_input.b) << (u_input.a.x % 32u));
    let x = u_input.a;
    s_output = func_1();
}

