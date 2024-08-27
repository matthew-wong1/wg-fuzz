struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: vec4<bool>;

var<private> global2: array<u32, 7> = array<u32, 7>(4294967295u, 1u, 26476u, 24698u, 59655u, 45725u, 0u);

var<private> global3: Struct_3;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    global3 = Struct_3(global3.a, Struct_1(_wgslsmith_f_op_f32(global3.b.a - _wgslsmith_f_op_f32(-global3.a.b)), global3.b.a, vec2<bool>(!(global1.x | global1.x), false)));
    let var_0 = global2[_wgslsmith_index_u32(max(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, global2[_wgslsmith_index_u32(4294967295u, 7u)], 4294967295u), abs(vec3<u32>(1811u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48483u, 7u)], 7u)], 63876u)))), _wgslsmith_add_u32(firstTrailingBit(21870u), firstTrailingBit(select(global2[_wgslsmith_index_u32(1u, 7u)], 25912u, global1.x))) & ~39087u), 7u)];
    global2 = array<u32, 7>();
    var var_1 = ~vec4<i32>(-1i, -2147483647i, 1i, -1i);
    let var_2 = global1.wyw;
    return global3.a;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = true;
    var var_1 = ~vec4<u32>(~(~max(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28740u, 18u)], 7u)], 18u)], u_input.c)), global0[_wgslsmith_index_u32(u_input.e, 18u)], 53826u, 1u);
    let var_2 = var_1.x;
    global3 = arg_0;
    var var_3 = 693f;
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.ywx >> (var_1.wxy % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(var_1.zyx, var_1.yxz)) ^ var_1.xyw, var_1.xyx), ~(~firstLeadingBit(var_1.zxy)), var_1.xxw);
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<bool>) -> StorageBuffer {
    let var_0 = func_1();
    let var_1 = false;
    let var_2 = func_1();
    var var_3 = func_1();
    let var_4 = u_input.a.x;
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1140f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.d.x, -_wgslsmith_mod_i32(~26258i, 24541i));
    global1 = vec4<bool>(all(vec2<bool>(true, !(global3.a.c.x | global1.x))), 83305u == max(_wgslsmith_sub_u32(0u, ~u_input.c), ~(global2[_wgslsmith_index_u32(u_input.c, 7u)] | global0[_wgslsmith_index_u32(69395u, 18u)])), global3.a.c.x, true);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global3.b.b))));
    let x = u_input.a;
    s_output = func_3(func_2(Struct_3(func_1(), global3.b), ~u_input.a.x, _wgslsmith_sub_vec3_i32(-(~vec3<i32>(var_0.x, 1081i, var_0.x)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, 0i), vec3<i32>(5631i, 61724i, -984i), vec3<i32>(0i, -1i, -2147483647i))))), ~(~_wgslsmith_sub_u32(~1u, 0u)), vec4<bool>(true, (~var_0.x | _wgslsmith_mod_i32(-1i, u_input.a.x)) > ((u_input.a.x >> (1u % 32u)) & ~(-11646i)), false, global1.x));
}

