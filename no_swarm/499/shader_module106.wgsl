struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(33674u, 32082u, 80186u, 1u, 0u, 90286u, 24933u, 4294967295u, 4294967295u, 22106u, 0u, 28280u, 10524u, 0u, 0u);

var<private> global1: Struct_2;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_3, 1>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<u32>) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(~global2.x, 1u)];
    let var_1 = -54963i < ~min(-1i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1.b.a), vec2<i32>(25175i, 20243i)), max(arg_0.a, var_0.c.a)));
    global2 = vec3<u32>(35840u, ~24284u, global2.x);
    var var_2 = Struct_1(global1.a.a, !(!vec4<bool>(13475i < u_input.c, all(vec4<bool>(false, true, true, arg_1.x)), !global1.b.b.x, var_1)));
    let var_3 = arg_0.b.x;
    return global1.a.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: bool) -> bool {
    return !(-3508i > (_wgslsmith_add_i32(func_3(Struct_1(global1.c.a, global1.a.b), vec3<bool>(global1.a.b.x, false, global1.b.b.x), 36058u, vec4<u32>(1u, 9108u, global2.x, global0[_wgslsmith_index_u32(global2.x, 15u)])), 1i) ^ 1i));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(1i, select(global1.b.b, vec4<bool>(!(!global1.c.b.x), global1.c.b.x, global1.c.b.x, firstTrailingBit(1i) == ~global1.b.a), vec4<bool>(select(any(vec4<bool>(true, true, false, global1.a.b.x)), !global1.b.b.x, global1.a.b.x), global1.b.b.x, global1.a.b.x, any(global1.c.b) || any(vec3<bool>(global1.c.b.x, false, false)))));
    global3 = array<Struct_3, 1>();
    let var_1 = -1438f;
    var_0 = global1.a;
    let var_2 = vec3<bool>(global1.c.b.x, !(func_2(vec2<bool>(var_0.b.x, global1.a.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -1000f, -749f, var_1) * vec4<f32>(var_1, var_1, var_1, -2036f)), true) != ((-2147483647i | var_0.a) != _wgslsmith_mult_i32(u_input.c, 2147483647i))), false);
    return ~64414u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    global3 = array<Struct_3, 1>();
    var var_1 = vec3<bool>(!any(!select(vec3<bool>(global1.c.b.x, global1.c.b.x, false), global1.c.b.ywy, vec3<bool>(false, false, true))), (max(u_input.c, -global1.a.a) | 1i) > -42955i, (~func_1() << (~(~4294967295u) % 32u)) < ~(~4294967295u));
    global2 = vec3<u32>(~(~func_1()), ~_wgslsmith_sub_u32(1u, global2.x), 467u);
    global3 = array<Struct_3, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(firstLeadingBit(vec3<i32>(global1.a.a, global1.b.a, global1.c.a)) >> (_wgslsmith_mult_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2663f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

