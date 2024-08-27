struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
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

var<private> global0: Struct_2;

var<private> global1: vec3<u32>;

var<private> global2: Struct_4;

var<private> global3: array<vec3<u32>, 26>;

var<private> global4: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(0i, 478f, Struct_1(true, -13142i, 80043u), vec4<f32>(467f, 729f, -916f, -1000f)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32) -> bool {
    global1 = countOneBits(firstLeadingBit(select(max(u_input.c.zyw, vec3<u32>(global0.c.c, u_input.c.x, u_input.c.x)) & ~vec3<u32>(arg_0, 2739u, global1.x), ~u_input.c.yxz << (global3[_wgslsmith_index_u32(563u, 26u)] % vec3<u32>(32u)), global2.a.a.a && true)));
    global2 = Struct_4(global2.a, global2.b, global0.d.xzx);
    global4 = array<Struct_2, 1>();
    global3 = array<vec3<u32>, 26>();
    global3 = array<vec3<u32>, 26>();
    return !any(select(vec3<bool>(true, true, true), !vec3<bool>(true, global0.c.a, global0.c.a), false));
}

fn func_2(arg_0: i32) -> i32 {
    global4 = array<Struct_2, 1>();
    global3 = array<vec3<u32>, 26>();
    var var_0 = ~min(global1.x, _wgslsmith_sub_u32(35044u, reverseBits(0u)));
    var_0 = global0.c.c;
    var var_1 = global0.c.a | !func_3(1u);
    return _wgslsmith_div_i32(-36973i, firstTrailingBit(-global0.a));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    let var_0 = ~func_2(_wgslsmith_div_i32(1i, -23712i)) ^ u_input.b.x;
    global1 = firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(0u, global1.x) | (arg_0.x & global1.x), abs(abs(global0.c.c)), arg_0.x & countOneBits(23989u))) | select(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global2.a.a.c, arg_0.x), global3[_wgslsmith_index_u32(4294967295u, 26u)] & u_input.c.xxy, ~vec3<u32>(arg_0.x, 7674u, global2.a.b.c)), abs(_wgslsmith_div_vec3_u32(global3[_wgslsmith_index_u32(0u, 26u)], u_input.c.wwx))), ~(~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, global2.a.b.c), 26u)]), !select(vec3<bool>(false, global0.c.a, global0.c.a), vec3<bool>(true, true, true), global0.c.a && false));
    global1 = countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.x, 0u), 1u), ~(u_input.c.x & u_input.c.x), 32882u), min(arg_0.xyx, _wgslsmith_add_vec3_u32(global3[_wgslsmith_index_u32(arg_0.x, 26u)] >> (arg_0.yxy % vec3<u32>(32u)), countOneBits(vec3<u32>(global2.b.c.c, global1.x, 1u))))));
    global4 = array<Struct_2, 1>();
    global1 = _wgslsmith_sub_vec3_u32(min(arg_0.ywy, _wgslsmith_div_vec3_u32(vec3<u32>(~global1.x, _wgslsmith_add_u32(global2.a.a.c, arg_0.x), global2.b.c.c & u_input.c.x), countOneBits(arg_0.xwy))), u_input.c.zxz);
    return -global0.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: i32) -> StorageBuffer {
    global3 = array<vec3<u32>, 26>();
    let var_0 = _wgslsmith_mult_vec2_u32(u_input.c.wx, u_input.c.wy);
    var var_1 = Struct_2(arg_2, 2360f, Struct_1(all(vec3<bool>(all(vec3<bool>(global0.c.a, global2.a.a.a, true)), true && global0.c.a, global0.c.a != false)), global2.b.c.b, 10449u), vec4<f32>(1f, -291f, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(668f, global0.d.x)))));
    let var_2 = func_1(countOneBits(~(vec4<u32>(global0.c.c, 1u, u_input.c.x, var_1.c.c) & vec4<u32>(global0.c.c, var_1.c.c, var_1.c.c, 44429u)))) | 6085i;
    var var_3 = Struct_1(all(vec4<bool>(true, false, !global2.b.c.a, global2.b.c.c > global1.x)) & true, _wgslsmith_dot_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_0.x, u_input.b.x), arg_0 >> (vec3<u32>(1u, 4294967295u, global0.c.c) % vec3<u32>(32u))), arg_0, select(select(vec3<bool>(false, false, true), vec3<bool>(false, var_1.c.a, false), var_1.c.a), select(vec3<bool>(true, false, global0.c.a), vec3<bool>(global0.c.a, true, var_1.c.a), vec3<bool>(true, var_1.c.a, global0.c.a)), true && var_1.c.a)), u_input.b), _wgslsmith_dot_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(global2.b.c.c, var_1.c.c, 4504u), vec3<u32>(u_input.c.x, global1.x, 0u))), max(~select(vec3<u32>(u_input.c.x, arg_1.x, global1.x), u_input.c.ywy, vec3<bool>(true, var_1.c.a, global2.a.a.a)), vec3<u32>(4294967295u, arg_1.x, global1.x))));
    return StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(-36419i, min(u_input.d.x, 37885i) >> (~0u % 32u), 0i, -47463i), min(~(vec4<i32>(global0.a, arg_0.x, var_3.b, 1677i) << (vec4<u32>(8473u, u_input.c.x, global2.b.c.c, 4294967295u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, 0i, var_2, u_input.d.x) << (vec4<u32>(4294967295u, var_1.c.c, 40985u, 4294967295u) % vec4<u32>(32u)), -u_input.d, countOneBits(u_input.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec3<i32>(2147483647i, min(firstTrailingBit(1i), 16724i), global0.c.b), ~vec4<u32>(0u, 1u, firstLeadingBit(global0.c.c), global0.c.c) >> (vec4<u32>(~69738u, 1u, 83268u, global2.b.c.c) % vec4<u32>(32u)), func_1(vec4<u32>(~31281u, global1.x, ~global1.x, ~16978u)) ^ (~_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.a, u_input.a.x, global0.c.b, 1i), vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.b.x)) >> (global1.x % 32u)));
}

