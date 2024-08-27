struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 4>;

var<private> global3: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> vec4<u32> {
    let var_0 = ~abs(countOneBits(~(~vec4<u32>(41395u, 3851u, u_input.b, u_input.b))));
    let var_1 = u_input.e;
    global2 = array<Struct_2, 4>();
    global1 = global2[_wgslsmith_index_u32(~55944u, 4u)];
    let var_2 = vec2<f32>(global3.x, global3.x);
    return var_0;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_sub_i32(1i, global1.b.a.x);
    var_0 = global0.a.x;
    global1 = Struct_2(select(global1.a, vec2<bool>(!(!global1.a.x), select(true, all(vec2<bool>(true, global1.a.x)), global1.a.x == false)), !(!global1.a.x) == global1.a.x), global1.b);
    let var_1 = Struct_3(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + global3.x) * global3.x) == 632f);
    let var_2 = !global1.a.x & any(vec3<bool>(false, var_1.b, select(17953u, 19224u, global1.a.x) == _wgslsmith_div_u32(4275u, arg_0)));
    return -1i;
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(u_input.a), global1.a.x);
    var var_1 = global0.a.x;
    var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(global1.b.a, _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a.x, var_0.a.a.x, -2147483647i), var_0.a.a)) >> (func_2() % vec4<u32>(32u))), global1.a.x);
    var var_2 = global1.b;
    var_0 = Struct_3(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(func_3(19963u, u_input.b, vec3<f32>(global3.x, 933f, global3.x)), 2147483647i, -1i, firstTrailingBit(1i)), ~(global0.a & global1.b.a))), any(select(vec3<bool>(false, global1.a.x, global1.a.x), select(vec3<bool>(global1.a.x, false, false), vec3<bool>(false, true, global1.a.x), false), vec3<bool>(true, var_0.b, var_0.b))) || !(!all(vec2<bool>(false, var_0.b))));
    return Struct_2(!(!(!global1.a)), Struct_1((vec4<i32>(-1i) * -u_input.a) | max(vec4<i32>(var_2.a.x, var_0.a.a.x, global1.b.a.x, var_0.a.a.x), vec4<i32>(global1.b.a.x, global1.b.a.x, global1.b.a.x, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(max(vec2<i32>(global1.b.a.x, -2147483647i), vec2<i32>(global1.b.a.x, global0.a.x))), vec2<i32>(countOneBits(2147483647i), ~(-10976i))), firstLeadingBit(~2147483647i), ~global0.a.x, -2147483647i));
    let var_0 = 0i;
    global2 = array<Struct_2, 4>();
    var var_1 = u_input.e;
    global2 = array<Struct_2, 4>();
    var var_2 = func_1(-1102f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) + -1856f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-772f)), -1208f))), vec2<i32>(-2147483647i, func_3(25207u, ~u_input.e, vec3<f32>(global3.x, -389f, -1000f)) << (min(abs(1u), 0u) % 32u)), _wgslsmith_sub_i32(2182i, 28250i));
}

