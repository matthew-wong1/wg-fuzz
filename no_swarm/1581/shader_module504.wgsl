struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32 = 1079f;

var<private> global2: Struct_2 = Struct_2(Struct_1(8331u), 2147483647i);

var<private> global3: array<Struct_1, 20>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~abs(vec3<i32>(0i, global2.b, 25856i)), (firstTrailingBit(vec3<i32>(arg_1.x, 1i, arg_1.x)) >> (vec3<u32>(u_input.a, global2.a.a, 4294967295u) % vec3<u32>(32u))) >> (vec3<u32>(4294967295u, ~arg_2.x, _wgslsmith_add_u32(4294967295u, u_input.a)) % vec3<u32>(32u))), ~(vec3<i32>(2147483647i, 89609i, u_input.d) | firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(374i, global2.b, 1i), vec3<i32>(-4882i, arg_1.x, arg_1.x)))));
    let var_1 = ~global2.b;
    global1 = -1000f;
    global3 = array<Struct_1, 20>();
    global1 = _wgslsmith_f_op_f32(step(arg_3.x, 1901f));
    return 31869u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = -vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, -21368i), vec2<i32>(global2.b, u_input.d) >> (u_input.e.xx % vec2<u32>(32u))), abs(u_input.d), ~53183i, ~_wgslsmith_mult_i32(min(-80687i, u_input.d), u_input.d));
    global0 = 4294967295u;
    return ~vec2<u32>(_wgslsmith_sub_u32(arg_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 0u) ^ u_input.e.zxz, _wgslsmith_div_vec3_u32(u_input.c.zwz, vec3<u32>(u_input.c.x, 24552u, u_input.e.x)))), ~1u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -356f);
    global0 = global2.a.a;
    global3 = array<Struct_1, 20>();
    var var_0 = (_wgslsmith_dot_vec4_u32(vec4<u32>(41726u, 4294967295u, 4294967295u, u_input.a), vec4<u32>(countOneBits(arg_2.a), arg_2.a, 34104u, arg_1.a.a)) << (arg_2.a % 32u)) << (u_input.b.x % 32u);
    let var_1 = global2.a;
    return _wgslsmith_mult_vec2_u32(select(~u_input.b, ~_wgslsmith_sub_vec2_u32(max(vec2<u32>(4294967295u, arg_1.a.a), u_input.c.zz), ~u_input.c.wz), select(!(!vec2<bool>(false, arg_0.x)), !(!vec2<bool>(arg_0.x, false)), vec2<bool>(true, arg_0.x))), vec2<u32>(arg_1.a.a, 37325u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1273f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-382f, -713f, true))))));
    var var_0 = reverseBits(firstLeadingBit(u_input.b.x) >> (global2.a.a % 32u));
    global3 = array<Struct_1, 20>();
    global4 = -(~(reverseBits(_wgslsmith_sub_i32(-9677i, u_input.d)) ^ 5451i));
    global4 = global2.b;
    let var_1 = max(vec4<i32>(~u_input.d, 1i, 2147483647i, -1i), countOneBits(vec4<i32>(-1i) * -(vec4<i32>(global2.b, -34922i, global2.b, u_input.d) & vec4<i32>(-26i, -1147i, u_input.d, u_input.d))));
    let var_2 = 1391f;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d | var_1.x, vec3<f32>(-900f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_2)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(func_1(global2.a.a, var_1.ww, u_input.e.xy, vec3<f32>(var_2, -661f, var_2)), 5895u), func_2(true, global2.a, Struct_1(1u))), reverseBits(func_3(vec3<bool>(false, false, true), Struct_2(global3[_wgslsmith_index_u32(0u, 20u)], var_1.x), Struct_1(7410u), u_input.d)) & _wgslsmith_mod_vec2_u32(vec2<u32>(17909u, global2.a.a), u_input.c.wx)), var_2);
}

