struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<bool>(false, false), 1100f), Struct_1(vec2<bool>(true, true), 477f), Struct_1(vec2<bool>(true, false), 464f), Struct_1(vec2<bool>(false, false), -1418f), Struct_1(vec2<bool>(true, false), -1027f), Struct_1(vec2<bool>(true, true), -638f), Struct_1(vec2<bool>(true, true), 249f));

var<private> global1: vec2<i32> = vec2<i32>(41702i, -25177i);

var<private> global2: bool = false;

var<private> global3: vec4<u32>;

var<private> global4: Struct_1 = Struct_1(vec2<bool>(false, true), 458f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    global3 = ~(u_input.e >> (_wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(1u, global3.x, u_input.e.x, global3.x)), ~u_input.e) % vec4<u32>(32u)));
    var var_0 = ~global3.xwz;
    var var_1 = Struct_2(~global3.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1371f)), global4.b)));
    var var_3 = vec2<i32>(global1.x, global1.x);
    return u_input.e.x;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(4294967295u, firstTrailingBit(func_3())), 6818u);
    let var_1 = Struct_2(_wgslsmith_mult_u32(countOneBits(35470u), var_0.x));
    let var_2 = var_1;
    let var_3 = !(!global4.a);
    var var_4 = Struct_1(!global4.a, 316f);
    return var_3.x;
}

fn func_1() -> vec2<bool> {
    global3 = ~vec4<u32>(32268u, u_input.c, 4294967295u, abs(27971u));
    global0 = array<Struct_1, 7>();
    let var_0 = Struct_1(vec2<bool>(all(!vec4<bool>(false, true, global4.a.x, true)), !global4.a.x), -1000f);
    let var_1 = Struct_2(~0u);
    global2 = global4.a.x;
    return select(vec2<bool>(select(u_input.b.x <= u_input.c, true, func_2(vec4<f32>(var_0.b, global4.b, global4.b, var_0.b))) | !func_2(vec4<f32>(1674f, -3167f, var_0.b, -1579f)), true), vec2<bool>(global4.a.x, !var_0.a.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(select(func_1(), vec2<bool>(true, true), false), _wgslsmith_f_op_f32(-global4.b));
    global3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global3.x, ~u_input.b.x, reverseBits(global3.x), ~reverseBits(global3.x)), ~max(vec4<u32>(1u, global3.x, 18937u, u_input.c) | u_input.e, ~u_input.e)), vec4<u32>(~(global3.x | ~u_input.c), global3.x, u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, min(vec3<u32>(u_input.e.x, 59830u, global3.x), reverseBits(vec3<u32>(12868u, global3.x, u_input.c))))), ~(~_wgslsmith_mult_vec4_u32(u_input.e, vec4<u32>(39601u, 103190u, global3.x, u_input.e.x))) << ((~firstLeadingBit(u_input.e) ^ _wgslsmith_mod_vec4_u32(~u_input.e, u_input.e & vec4<u32>(global3.x, global3.x, global3.x, global3.x))) % vec4<u32>(32u)));
    global0 = array<Struct_1, 7>();
    global1 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(~(~u_input.d.x), -3263i), (~u_input.a.zy << ((vec2<u32>(global3.x, u_input.c) & vec2<u32>(78716u, u_input.c)) % vec2<u32>(32u))) >> (vec2<u32>(global3.x, ~0u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(u_input.d, select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.d.x), u_input.a.zy, vec2<i32>(u_input.d.x, -2147483647i)), u_input.a.yx, true))), ~_wgslsmith_clamp_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(global1.x, global1.x)), max(vec2<i32>(-26931i, global1.x), _wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, 0i), u_input.a.yz)), u_input.d));
    let var_0 = firstLeadingBit(-(~(~global1.x))) ^ 0i;
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

