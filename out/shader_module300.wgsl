struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_3,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: u32 = 1u;

var<private> global1: Struct_4;

var<private> global2: array<vec3<u32>, 21>;

var<private> global3: array<i32, 29>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = firstTrailingBit(~((arg_0.x & 17850u) & _wgslsmith_mult_u32(80854u, global1.d.x)) & _wgslsmith_mod_u32(~global1.d.x << (~1u % 32u), min(18142u, _wgslsmith_dot_vec2_u32(global1.e.b.a.a, arg_0.xw))));
    let var_1 = global1.e.b.a.d.x;
    global0 = arg_0.x;
    var_0 = ~arg_0.x;
    let var_2 = global1.e;
    return !vec3<bool>((false | global1.b) || global1.a.x, all(select(!global1.a.zy, select(global1.a.xz, vec2<bool>(global1.b, false), global1.a.zx), global1.a.zz)), any(!global1.a.yz));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(abs(max(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.a, 2047u, global1.d.x, 1u), vec4<u32>(38179u, 4294967295u, 21483u, global1.c.a)), 462u), global1.e.b.a.b.x)), global1.c.b, firstTrailingBit(u_input.a.x));
    let var_1 = Struct_3(1u, Struct_2(var_0.b.a), 1i);
    var var_2 = Struct_2(global1.e.b.a);
    var var_3 = var_1.b;
    var_2 = Struct_2(var_1.b.a);
    return Struct_4(func_3(~(~(vec4<u32>(var_2.a.a.x, global1.e.a, var_2.a.a.x, 5084u) ^ vec4<u32>(1u, var_0.a, 1u, var_1.b.a.b.x)))), global1.b, Struct_3(~select(1u, var_0.a ^ 4294967295u, select(false, global1.b, global1.a.x)), Struct_2(var_0.b.a), -3976i), _wgslsmith_mult_vec2_u32(var_2.a.a ^ var_3.a.b.xx, var_0.b.a.a), var_1);
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_3(1u, Struct_2(func_2().e.b.a), 0i << (_wgslsmith_div_u32(93835u, _wgslsmith_dot_vec3_u32(~arg_1.e.b.a.b, arg_1.c.b.a.b)) % 32u));
    var var_1 = arg_1;
    var var_2 = arg_1.c.b;
    global1 = arg_1;
    let var_3 = arg_1.c.b.a;
    return func_2().c.b.a;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_4) -> bool {
    var var_0 = func_4(-2147483647i, func_2(), ~max(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(47837i, u_input.a.x, -2147483647i)), abs(vec3<i32>(arg_2.x, 2851i, 0i))), ~select(vec3<i32>(arg_2.x, -1i, -22111i), vec3<i32>(-40194i, 49213i, 1i), vec3<bool>(global1.a.x, global1.a.x, global1.b))));
    global2 = array<vec3<u32>, 21>();
    global3 = array<i32, 29>();
    let var_1 = vec2<bool>(all(arg_3.a.xx), all(arg_3.a));
    var var_2 = func_2().a.yz;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 29>();
    global0 = abs(global1.c.b.a.a.x);
    global2 = array<vec3<u32>, 21>();
    var var_0 = 1u;
    var var_1 = global1.c.b.a;
    var var_2 = any(!vec3<bool>(global1.b, !func_1(var_1.d.x, vec4<bool>(global1.a.x, true, false, global1.a.x), vec3<i32>(global3[_wgslsmith_index_u32(5651u, 29u)], global3[_wgslsmith_index_u32(var_1.a.x, 29u)], 57942i), Struct_4(vec3<bool>(true, global1.a.x, false), global1.b, Struct_3(1u, global1.c.b, -2147483647i), global1.d, global1.c)), global1.a.x));
    let var_3 = Struct_3(~(~(~(~15790u))), func_2().e.b, abs(var_1.c.x));
    var var_4 = firstTrailingBit(~select(abs(vec4<u32>(global1.d.x, 48886u, var_3.a, 381u)), ~firstLeadingBit(vec4<u32>(4294967295u, 46197u, var_1.a.x, var_1.a.x)), vec4<bool>(global1.b && true, global1.a.x, global1.b && true, false & global1.a.x)));
    let var_5 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~global1.c.b.a.a.x, ~1070u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(15947u, var_4.x, 23273u, global1.e.a)), ~vec4<u32>(global1.c.a, var_3.b.a.a.x, 0u, 0u)), _wgslsmith_clamp_u32(0u << (var_1.a.x % 32u), 1u, _wgslsmith_sub_u32(var_3.a, global1.e.a))), _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.b.a.b.x, var_3.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, global1.c.b.a.b.x, global1.d.x), vec3<u32>(0u, var_3.b.a.b.x, 4294967295u))), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_4.x, 43000u, var_3.a), vec3<u32>(var_4.x, var_1.a.x, var_4.x))))) ^ var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c);
}

