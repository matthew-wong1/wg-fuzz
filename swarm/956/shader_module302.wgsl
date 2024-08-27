struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<bool, 27> = array<bool, 27>(false, true, true, false, true, false, true, false, true, false, false, true, false, true, false, false, true, true, true, false, false, true, false, false, false, false, true);

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(false, 41220u, vec4<f32>(164f, 532f, 1740f, -888f), -817f);

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = -17500i;
    let var_1 = global0[_wgslsmith_index_u32(global3.b, 19u)];
    global1 = array<bool, 27>();
    global1 = array<bool, 27>();
    var var_2 = Struct_1(!(global3.a || true), ~(global3.b << (72803u % 32u)), global3.c, _wgslsmith_f_op_f32(-global4.c.x));
    return global0[_wgslsmith_index_u32(select(4842u, _wgslsmith_mult_u32(0u, var_1.b), (_wgslsmith_f_op_f32(-478f * _wgslsmith_f_op_f32(global3.c.x - var_1.d)) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d, -1105f))) & true), 19u)];
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~firstTrailingBit(vec3<u32>(4294967295u, u_input.a, 59321u));
    global0 = array<Struct_1, 19>();
    var var_1 = vec2<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(0u), 27u)], func_2().a);
    let var_2 = arg_1;
    var var_3 = max(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(37895u, u_input.a, global4.b, 0u), vec4<u32>(0u, var_0.x, global3.b, u_input.a))) << (_wgslsmith_add_vec4_u32(abs(~vec4<u32>(4294967295u, 19403u, global3.b, arg_1.b)), ~vec4<u32>(0u, u_input.b.x, var_2.b, var_0.x)) % vec4<u32>(32u)), vec4<u32>(global3.b, select(max(_wgslsmith_add_u32(1u, global2.b), global4.b ^ 3650u), 4294967295u, true), 4294967295u, _wgslsmith_add_u32(global2.b, select(1u, min(var_2.b, u_input.a), true))));
    return Struct_1(-2501f > _wgslsmith_f_op_f32(-global3.d), _wgslsmith_dot_vec2_u32(~abs(u_input.b.zx), ~(vec2<u32>(global2.b, global2.b) & u_input.b.zy)) >> (var_0.x % 32u), func_2().c, 1249f);
}

fn func_1() -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 19u)];
    global3 = func_3(-2147483647i, func_2());
    var var_1 = global0[_wgslsmith_index_u32(42148u, 19u)];
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~func_3(_wgslsmith_mult_i32(1i, -26634i), func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 37149i, -2147483647i), vec4<i32>(4402i, 0i, -39546i, 1i)), Struct_1(global1[_wgslsmith_index_u32(global4.b, 27u)], 73905u, global2.c, global3.c.x))).b, global3.b), 19u)];
    global0 = array<Struct_1, 19>();
    return StorageBuffer(_wgslsmith_sub_vec3_i32(~vec3<i32>(1i, 1i, 1i), vec3<i32>(-2147483647i, 1i, -1i)), countOneBits(firstLeadingBit(reverseBits(~vec3<u32>(var_2.b, var_0.b, u_input.a)))), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(global4.c.yw));
    let var_1 = countOneBits(_wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(14188i, -1i))), -vec2<i32>(i32(-1i) * -2147483647i, 1i)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -400f);
    global1 = array<bool, 27>();
    let x = u_input.a;
    s_output = func_1();
}

