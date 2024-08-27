struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 32>;

var<private> global1: array<Struct_3, 9>;

var<private> global2: vec3<u32>;

var<private> global3: vec2<u32> = vec2<u32>(13612u, 1u);

var<private> global4: vec3<i32> = vec3<i32>(-10673i, 1i, -1614i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global2 = _wgslsmith_div_vec3_u32(firstLeadingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 6027u, 24672u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global3.x, 4294967295u, global3.x), vec3<u32>(56487u, 4294967295u, 5905u), vec3<u32>(82294u, 4294967295u, global3.x)))), ~(~vec3<u32>(40748u, global2.x, 1886u)) >> (reverseBits(~min(vec3<u32>(global3.x, 60021u, global2.x), vec3<u32>(global3.x, global2.x, 1u))) % vec3<u32>(32u)));
    let var_0 = Struct_2(true, ~(_wgslsmith_sub_vec2_u32(vec2<u32>(22445u, global2.x) ^ global2.yz, firstLeadingBit(vec2<u32>(global2.x, global2.x))) >> (~global2.yx % vec2<u32>(32u))));
    let var_1 = global1[_wgslsmith_index_u32(global2.x, 9u)];
    let var_2 = 11247i;
    let var_3 = 510f;
    return var_0.b.x;
}

fn func_2() -> vec3<i32> {
    global3 = global2.xy;
    global3 = vec2<u32>(~1u, 44916u);
    global3 = reverseBits(~(~vec2<u32>(~13217u, func_3())));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.x, 86615u), 32u)];
    let var_1 = ~var_0.b;
    return _wgslsmith_add_vec3_i32(min(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a, global4.x, var_0.a), max(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-1i, global4.x, -10763i)))), abs(~_wgslsmith_mult_vec3_i32(vec3<i32>(global4.x, -2147483647i, 2147483647i), vec3<i32>(var_0.a, 19261i, u_input.a)))), firstTrailingBit(-reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global4.x, u_input.a, global4.x), vec3<i32>(global4.x, 2147483647i, var_0.a)))));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = -(~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-8170i, 0i, u_input.a), vec3<i32>(-1i, arg_0, global4.x), vec3<i32>(2147483647i, -30501i, arg_0)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 2147483647i, arg_0), vec3<i32>(global4.x, 24632i, -595i), vec3<i32>(arg_0, global4.x, 1i)) << (~vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u))));
    var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(global4.x, -18387i, 2147483647i)), vec3<i32>(-1i) * -min(select(vec3<i32>(-3944i, 57461i, 0i), vec3<i32>(-6109i, 69567i, u_input.a), vec3<bool>(true, true, false)), vec3<i32>(arg_0, 0i, global4.x) << (vec3<u32>(7154u, 69610u, global2.x) % vec3<u32>(32u))));
    var_0 = max(min(vec3<i32>(~u_input.a, arg_0, _wgslsmith_clamp_i32(var_0.x, global4.x, 1i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, arg_0, var_0.x), vec3<i32>(2147483647i, 1i, global4.x), vec3<i32>(u_input.a, 1i, arg_0))) >> (_wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(global3.x, global3.x, 4294967295u)), vec3<u32>(reverseBits(global3.x), global2.x, global2.x | global3.x)) % vec3<u32>(32u)), min(abs(reverseBits(~vec3<i32>(global4.x, 19026i, arg_0))), ~(-func_2())));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(0u & ~global2.x) << (_wgslsmith_mult_u32(global3.x, 12593u) % 32u), 0u), 32u)];
    var var_2 = arg_0;
    return vec4<bool>(any(!select(!vec3<bool>(var_1.c, false, true), select(vec3<bool>(true, var_1.c, true), vec3<bool>(false, false, true), true), var_1.c)), !any(select(!vec3<bool>(false, var_1.c, false), select(vec3<bool>(false, false, true), vec3<bool>(var_1.c, var_1.c, false), vec3<bool>(false, var_1.c, false)), -49986i < u_input.a)), any(!vec2<bool>(var_1.a == global4.x, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 9>();
    let var_0 = vec2<bool>(false, all(func_1(min(_wgslsmith_sub_i32(global4.x, -876i), 1i << (global2.x % 32u)))));
    global4 = _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(min(u_input.a, -21374i), i32(-1i) * -36682i, -12210i)), -(~(~countOneBits(vec3<i32>(global4.x, -1011i, 47500i)))), -select(vec3<i32>(u_input.a, 41742i, global4.x), vec3<i32>(global4.x, u_input.a, 2147483647i), var_0.x) | _wgslsmith_add_vec3_i32(-abs(vec3<i32>(32751i, global4.x, 16031i)), -vec3<i32>(-21046i, 5783i, -1i)));
    let var_1 = Struct_3(1863f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -457f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(291f)))), 0u ^ global3.x, (_wgslsmith_f_op_f32(floor(-156f)) < _wgslsmith_f_op_f32(1472f * 631f)) & select(true, true, true)), Struct_1(-1950f, _wgslsmith_add_u32(4294967295u, abs(global2.x)), var_0.x));
    let var_2 = vec4<u32>(~global2.x, ~max(global2.x, var_1.b.b), _wgslsmith_mult_u32(0u, firstTrailingBit(_wgslsmith_mult_u32(4294967295u, global2.x))) | global3.x, global3.x);
    let var_3 = vec2<bool>(var_0.x, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(396f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-780f)), _wgslsmith_f_op_f32(select(476f, 784f, !var_1.b.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.a)) + var_1.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.a)), _wgslsmith_f_op_f32(round(-153f))) - -899f)), -countOneBits(-global4.x << (var_1.b.b % 32u)));
}

