struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(21893i), Struct_3(i32(-2147483648)));

var<private> global1: Struct_3;

var<private> global2: Struct_2;

var<private> global3: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global3 = global2.b.x;
    let var_0 = 1i;
    global2 = Struct_2(arg_0, vec2<u32>(min(global2.c, reverseBits(1u)), u_input.a.x), u_input.d.x);
    global0 = array<Struct_3, 2>();
    let var_1 = u_input.c.xz;
    return u_input.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = !global2.a.c;
    global0 = array<Struct_3, 2>();
    let var_1 = vec4<u32>(~(~_wgslsmith_div_u32(1u, u_input.a.x >> (4294967295u % 32u))), global2.c, _wgslsmith_sub_u32(max(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.a.x), func_2(Struct_1(0i, global2.a.b, global2.a.c, global2.a.b, global2.a.e))), _wgslsmith_add_u32(0u, global2.c)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.d.x), vec2<u32>(4294967295u, u_input.d.x), u_input.a.yz), countOneBits(vec2<u32>(27728u, global2.b.x))), countOneBits(~vec2<u32>(u_input.d.x, global2.c))));
    let var_2 = -_wgslsmith_dot_vec4_i32(-min(u_input.b, u_input.b), vec4<i32>(u_input.c.x, ~(-2147483647i), 1i, min(global2.a.a, 2147483647i))) << (1u % 32u);
    let var_3 = true;
    return global2.a;
}

fn func_3() -> vec3<u32> {
    let var_0 = ~(-u_input.c.zy);
    var var_1 = _wgslsmith_f_op_f32(-global2.a.e.x);
    return vec3<u32>(global2.c, ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(15699u, 73418u, global2.b.x), u_input.d.yzz))), u_input.d.x);
}

fn func_4(arg_0: vec3<u32>) -> vec3<i32> {
    let var_0 = !(!select(!(!vec3<bool>(global2.a.c, global2.a.c, true)), vec3<bool>(global2.a.d < global2.a.d, true, global2.a.c), !(!vec3<bool>(true, true, global2.a.c))));
    global0 = array<Struct_3, 2>();
    global1 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.a, 23781i, 1i, u_input.b.x), vec4<i32>(global1.a, 4590i, global2.a.a, -34394i)), -global2.a.a, global1.a) >> (vec4<u32>(1u, global2.b.x, u_input.d.x, firstTrailingBit(17675u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(17626i, _wgslsmith_div_i32(-96751i, global2.a.a), u_input.c.x, -16017i), u_input.b | u_input.b)));
    let var_1 = _wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(u_input.d.zww >> (arg_0 % vec3<u32>(32u)), vec3<u32>(arg_0.x, arg_0.x, _wgslsmith_mult_u32(4294967295u, 0u)), vec3<u32>(18424u | u_input.a.x, arg_0.x, global2.b.x))), min(u_input.a, ~(~(vec3<u32>(global2.c, global2.b.x, u_input.d.x) & vec3<u32>(1u, 4294967295u, arg_0.x)))), _wgslsmith_div_vec3_u32(~(vec3<u32>(arg_0.x, global2.b.x, global2.c) ^ arg_0), abs(~max(vec3<u32>(arg_0.x, arg_0.x, 18250u), vec3<u32>(0u, u_input.a.x, 1u)))));
    global2 = Struct_2(global2.a, vec2<u32>(_wgslsmith_sub_u32(countOneBits(4294967295u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(48029u, arg_0.x), 11023u)), max(15185u, u_input.a.x) >> (countOneBits(4294967295u << (var_1.x % 32u)) % 32u)), ~(~_wgslsmith_mod_u32(~global2.c, 1u)));
    return ~vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(u_input.b), ~u_input.b) >> (4294967295u % 32u), u_input.b.x, _wgslsmith_sub_i32(select(-u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-50784i, u_input.c.x, 1i)), any(vec4<bool>(global2.a.c, var_0.x, true, false))), ~_wgslsmith_div_i32(-1i, -37611i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 2>();
    let var_0 = vec3<bool>(u_input.a.x >= abs(min(u_input.d.x << (41707u % 32u), _wgslsmith_add_u32(1u, u_input.a.x))), true, global2.a.c);
    let var_1 = _wgslsmith_clamp_i32(min(66848i, 0i), global2.a.a, -global2.a.a ^ countOneBits(18764i));
    let var_2 = func_1();
    global1 = global0[_wgslsmith_index_u32(27050u, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_3()), u_input.b, global2.b.x);
}

