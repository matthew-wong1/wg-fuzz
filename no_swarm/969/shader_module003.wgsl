struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, Struct_1(vec4<f32>(479f, -2569f, 563f, 731f), vec4<i32>(-8635i, -1i, i32(-2147483648), 0i), 1u, vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec2<i32>(2147483647i, 1i)));

var<private> global1: array<u32, 4>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_3 = Struct_3(Struct_1(vec4<f32>(-1000f, -818f, -180f, -919f), vec4<i32>(48235i, 18116i, -29550i, 0i), 1u, vec4<u32>(7183u, 5794u, 49295u, 4294967295u), vec2<i32>(1i, -1i)));

var<private> global4: vec3<f32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> vec2<bool> {
    let var_0 = global3.a.d.xyx;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2316f * _wgslsmith_f_op_f32(global3.a.a.x + 1213f)), global0.b.a.x, global0.a)))) > global0.b.a.x;
    let var_2 = -global3.a.b;
    return select(!(!(!(!vec2<bool>(global0.a, global0.a)))), vec2<bool>(any(!(!vec4<bool>(true, global0.a, global0.a, global0.a))), global0.a), !global0.a);
}

fn func_3() -> bool {
    return all(!select(vec2<bool>(!global0.a, -1214i == global0.b.e.x), vec2<bool>(false, true), vec2<bool>(all(vec4<bool>(global0.a, true, false, true)), true)));
}

fn func_2() -> Struct_5 {
    let var_0 = -862f;
    let var_1 = global0.b;
    global0 = Struct_2(35333u >= select(global1[_wgslsmith_index_u32(~(global3.a.c ^ 80700u), 4u)], _wgslsmith_add_u32(0u, global0.b.d.x), 80736u >= (global0.b.d.x & 1u)), Struct_1(vec4<f32>(-2458f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, -623f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-633f, global3.a.a.x))), -350f), vec4<i32>(global3.a.e.x ^ ~global3.a.e.x, u_input.b.x, _wgslsmith_mod_i32(~2147483647i, -22020i), 1i), ~(~global0.b.d.x), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 23038u, 5557u, global0.b.c) << (var_1.d % vec4<u32>(32u)), vec4<u32>(global2.x, var_1.d.x, global3.a.c, global1[_wgslsmith_index_u32(global2.x, 4u)])), firstLeadingBit(u_input.b)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-484f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2002f - var_0), 199f)))));
    let var_3 = var_1.b.zw & _wgslsmith_mod_vec2_i32(var_1.b.yw, _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 0i) << (countOneBits(global3.a.d.xx) % vec2<u32>(32u)), firstLeadingBit(global0.b.b.zy)));
    return Struct_5(Struct_2(select(!global0.a & select(global0.a, global0.a, true), true, !func_3()), global0.b), Struct_2(any(vec4<bool>(true, global0.b.a.x != -1000f, global0.a, all(vec4<bool>(global0.a, false, true, false)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)), vec4<i32>(u_input.c.x, u_input.e.x | 0i, select(-21892i, 40630i, global0.a), global3.a.b.x | global0.b.b.x), 0u << (global3.a.d.x % 32u), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], global0.b.c, 1u, 1u) >> (countOneBits(var_1.d) % vec4<u32>(32u)), -(~vec2<i32>(1i, -1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(global2.x);
    let var_1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~u_input.a, 17678u, abs(global1[_wgslsmith_index_u32(13580u, 4u)]) & global0.b.c, reverseBits(~global1[_wgslsmith_index_u32(1u, 4u)])), ~(~max(global0.b.d, _wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global3.a.d.x, 4u)], 0u, 39735u, global0.b.c), global0.b.d))));
    let var_2 = any(vec2<bool>(any(!func_1()), any(!(!vec4<bool>(false, true, true, global0.a)))));
    let var_3 = func_2();
    var var_4 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(max(abs(global1[_wgslsmith_index_u32(var_3.a.b.d.x, 4u)]), _wgslsmith_dot_vec2_u32(var_1.yw, global0.b.d.yw)), 1u), reverseBits(vec2<u32>(~24109u, _wgslsmith_add_u32(global0.b.d.x, 35320u)))), 4294967295u);
    var var_5 = select(~global0.b.b, abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, var_3.a.b.b.x, global0.b.e.x, 2147483647i), vec4<i32>(global3.a.e.x, global3.a.e.x, 0i, 47312i))) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global3.a.d.x, 28467u, global2.x) & vec4<u32>(26956u, u_input.a, 4294967295u, 38135u), global0.b.d) % vec4<u32>(32u)), !(!(!all(vec2<bool>(false, global0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~vec2<u32>(var_1.x, 1u))), _wgslsmith_f_op_vec2_f32(-global4.zy), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 4u)], var_1.x), 4u)], global0.b.b, _wgslsmith_f_op_f32(-var_3.b.b.a.x));
}

