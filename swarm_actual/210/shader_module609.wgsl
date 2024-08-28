struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<u32, 3> = array<u32, 3>(1u, 4294967295u, 67910u);

var<private> global2: array<vec2<f32>, 32>;

var<private> global3: vec2<u32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> Struct_4 {
    return Struct_4(!arg_3.c);
}

fn func_3() -> u32 {
    global1 = array<u32, 3>();
    global1 = array<u32, 3>();
    global3 = countOneBits(select(global0.xx, global0.xz, func_2(min(~vec3<u32>(1u, global0.x, global3.x), vec3<u32>(4294967295u, u_input.a, 4294967295u)), 1u, 213i, Struct_3(max(vec4<u32>(54790u, 1u, global1[_wgslsmith_index_u32(u_input.c, 3u)], u_input.c), vec4<u32>(global3.x, 4294967295u, 42191u, global3.x)), reverseBits(vec3<i32>(29886i, 2147483647i, u_input.d)), func_2(vec3<u32>(u_input.b, 0u, 46342u), 1026u, 62492i, Struct_3(vec4<u32>(global0.x, global3.x, 1u, global1[_wgslsmith_index_u32(global3.x, 3u)]), vec3<i32>(-19551i, u_input.d, u_input.d), vec3<bool>(true, false, true))).a)).a.x));
    return global0.x;
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> f32 {
    let var_0 = func_2(_wgslsmith_mod_vec3_u32(arg_0.a.xyz, ~arg_0.a.zzx), 7496u, ~1684i, arg_0);
    var var_1 = arg_1;
    let var_2 = func_2(arg_0.a.xyz, ~_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(18283u, 52278u), vec2<u32>(global0.x, 4294967295u)), global0.zy), -_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d & arg_0.b.x, 65528i), 0i), arg_0).a;
    global1 = array<u32, 3>();
    let var_3 = Struct_4(vec3<bool>((_wgslsmith_dot_vec2_i32(arg_0.b.zy, arg_0.b.yz) >> (~global0.x % 32u)) < (~0i >> (func_3() % 32u)), all(var_0.a), !arg_1));
    return -509f;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_3 {
    global2 = array<vec2<f32>, 32>();
    let var_0 = Struct_1(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_2.a, vec4<u32>(44824u, 57055u, global0.x, global0.x)), select(arg_2.a, vec4<u32>(global0.x, 1u, global3.x, 2085u), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 830f), 135f)), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(843f, -1009f, _wgslsmith_f_op_f32(sign(-1290f))), vec3<f32>(_wgslsmith_f_op_f32(-2112f - 657f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(arg_0)))))));
    let var_1 = firstLeadingBit(-u_input.d);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1375f))), -482f, var_0.d.x);
    let var_3 = any(select(select(!(!vec4<bool>(true, arg_2.c.x, true, arg_2.c.x)), vec4<bool>(true, false, all(vec4<bool>(true, true, var_0.c, true)), arg_2.c.x), vec4<bool>(true && var_0.c, true & arg_2.c.x, var_0.c || var_0.c, any(vec2<bool>(arg_2.c.x, false)))), vec4<bool>(arg_2.c.x, select(arg_2.c.x || false, var_0.c, all(vec4<bool>(false, var_0.c, true, var_0.c))), any(select(vec2<bool>(arg_2.c.x, false), vec2<bool>(var_0.c, arg_2.c.x), var_0.c)), false), false));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-337f * -1358f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1277f, -448f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1336f)), _wgslsmith_f_op_f32(func_1(Struct_3(vec4<u32>(global0.x, u_input.a, 1u, 4294967295u), vec3<i32>(u_input.d, 6539i, u_input.d), vec3<bool>(true, false, false)), true))))))), select(_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, 46587i, -87078i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.d, -39039i), vec3<i32>(u_input.d, u_input.d, 0i))), vec3<i32>(u_input.d, u_input.d | _wgslsmith_sub_i32(u_input.d, u_input.d), firstTrailingBit(firstTrailingBit(2147483647i))), true), Struct_3(firstTrailingBit(~(~vec4<u32>(global1[_wgslsmith_index_u32(43961u, 3u)], global0.x, global0.x, 4294967295u))), vec3<i32>(-4788i, u_input.d, -2166i), !func_2(~vec3<u32>(u_input.a, 57244u, global3.x), 35297u, u_input.d, Struct_3(vec4<u32>(global3.x, u_input.b, 1u, global1[_wgslsmith_index_u32(global0.x, 3u)]), vec3<i32>(u_input.d, u_input.d, -4521i), vec3<bool>(false, true, true))).a));
    var var_1 = ~firstTrailingBit(vec4<u32>(countOneBits(global1[_wgslsmith_index_u32(var_0.a.x, 3u)]), var_0.a.x, _wgslsmith_mult_u32(var_0.a.x, global1[_wgslsmith_index_u32(global0.x, 3u)]), min(var_0.a.x, 1u)) | ~countOneBits(vec4<u32>(global3.x, 60722u, 1u, global3.x)));
    var var_2 = func_4(-884f, vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -u_input.d, countOneBits(var_0.b.x | var_0.b.x), firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, 0i, u_input.d))), u_input.d, abs(firstTrailingBit(-14403i)) >> (0u % 32u)), func_4(-193f, var_0.b, Struct_3(~reverseBits(vec4<u32>(50681u, 1u, 4294967295u, global3.x)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 0i, 0i), vec3<i32>(u_input.d, -1i, u_input.d), var_0.b), func_4(_wgslsmith_f_op_f32(-1891f + 1544f), var_0.b, Struct_3(var_0.a, vec3<i32>(var_0.b.x, u_input.d, 12692i), vec3<bool>(var_0.c.x, var_0.c.x, false))).c)));
    var_1 = var_0.a;
    var_0 = func_4(_wgslsmith_f_op_f32(-1837f + 2029f), var_2.b, Struct_3(vec4<u32>(13953u, ~(~0u), countOneBits(var_0.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 38492u, 54170u), _wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, 0u, u_input.b), var_1.ywz))), (reverseBits(var_0.b) | _wgslsmith_mod_vec3_i32(var_2.b, var_0.b)) & _wgslsmith_add_vec3_i32(vec3<i32>(-74606i, u_input.d, u_input.d), var_2.b), var_2.c));
    let var_3 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(vec3<u32>(var_2.a.x, var_0.a.x, global3.x), var_0.a.wzx)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1966f, 513f, 869f)))))), 1i);
}

