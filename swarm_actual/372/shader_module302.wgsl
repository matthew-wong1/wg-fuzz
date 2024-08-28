struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
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

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(2147483647i, -35983i), 0u, vec2<bool>(false, true));

var<private> global2: array<Struct_1, 17>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    global1 = global2[_wgslsmith_index_u32(countOneBits(4294967295u), 17u)];
    global2 = array<Struct_1, 17>();
    global0 = Struct_1(vec2<i32>(-1i) * -vec2<i32>(u_input.c, 36411i), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, 15519u), 0u, 4294967295u) ^ _wgslsmith_sub_u32(~global1.b, global0.b), global0.b ^ 0u), global0.c);
    global1 = global2[_wgslsmith_index_u32(47748u, 17u)];
    let var_0 = -87569i;
    return global2[_wgslsmith_index_u32(0u, 17u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<bool> {
    return !vec2<bool>(global0.c.x, _wgslsmith_f_op_f32(select(-1000f, arg_1.x, arg_1.x > arg_1.x)) <= arg_1.x);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(~vec2<i32>(global1.a.x, arg_0.x) ^ global1.a, ~global1.b, select(global0.c, global1.c, !vec2<bool>(true, global1.b >= 4294967295u)));
    var var_1 = func_2();
    let var_2 = !global0.c;
    let var_3 = global1.a.x;
    var_1 = func_2();
    return Struct_1(reverseBits(countOneBits(var_0.a)), var_1.b, func_3(var_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -923f, 907f)))), vec3<f32>(-595f, 755f, -495f)), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_sub_vec4_i32(-abs(vec4<i32>(1i, global0.a.x, 0i, -1i)) ^ (vec4<i32>(global0.a.x, u_input.b, global1.a.x, -1i) & vec4<i32>(15760i, global0.a.x, -2147483647i, global0.a.x)), vec4<i32>(reverseBits(-1i), 0i, _wgslsmith_div_i32(global1.a.x, -21965i), ~global1.a.x) | -(vec4<i32>(2147483647i, global1.a.x, u_input.c, global0.a.x) << (vec4<u32>(44846u, global0.b, 0u, global1.b) % vec4<u32>(32u)))));
    let var_0 = select(!select(vec2<bool>(global1.c.x, true), !func_2().c, global0.c.x), global1.c, !func_1(firstTrailingBit(vec4<i32>(3758i, 1i, u_input.b, u_input.b))).c);
    let var_1 = 1797f;
    let var_2 = func_2();
    let var_3 = !(!(!var_0.x));
    global2 = array<Struct_1, 17>();
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(min(-6032i, 1881i) | firstLeadingBit(min(var_2.a.x, _wgslsmith_dot_vec2_i32(global0.a, global0.a))), u_input.a.zx >> (~(~(vec2<u32>(27241u, 1u) | vec2<u32>(global0.b, 0u))) % vec2<u32>(32u)));
}

