struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<f32, 2> = array<f32, 2>(-1597f, 545f);

var<private> global3: Struct_2 = Struct_2(false, -1i, vec2<bool>(false, false));

var<private> global4: Struct_3;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = global0.x | firstLeadingBit(global0.x);
    var var_1 = u_input.b;
    var var_2 = global4.c;
    var_1 = u_input.b;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 2u)]), -543f)), -1138f, global4.a.x, 1212f))), vec4<i32>(-(~(~u_input.a.x)), u_input.a.x, abs(2147483647i), _wgslsmith_div_i32(var_2.c.x, -30268i)), global4.c, select(arg_0, global3.b ^ 0i, var_2.e.x));
    return any(global4.c.e.yyw);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(!(!all(global4.c.e)), global3.b, !(!vec2<bool>(false, global4.c.a.x)));
    let var_1 = ~u_input.b;
    var var_2 = 1u;
    return vec4<bool>(global3.c.x, false, true, (0u >= (~0u >> (_wgslsmith_add_u32(4294967295u, u_input.b) % 32u))) & func_3(_wgslsmith_sub_i32(36555i | var_0.b, u_input.a.x << (u_input.b % 32u))));
}

fn func_1() -> vec2<bool> {
    global4 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1182f - 696f), -359f, 138f, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.b, 2u)]))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.a.x, -430f, 133f, global2[_wgslsmith_index_u32(9953u, 2u)]))))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(global4.c.b.x, global4.c.d.x, -26407i, u_input.a.x)), ~global4.b), reverseBits(_wgslsmith_mod_vec4_i32(~global4.b, global4.b & global4.b))), Struct_1(vec2<bool>(global3.c.x | true, true), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(31721i, 2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(global3.b, global3.b), u_input.a, u_input.a)), _wgslsmith_mult_vec2_i32(~u_input.a, global4.b.yy)), _wgslsmith_sub_vec3_i32(min(global4.b.xzz, vec3<i32>(-48852i, -1i, 15904i)), global4.b.wxz), global4.b.wyw, select(select(vec4<bool>(false, false, true, true), global4.c.e, false), !func_2(), global4.c.e)), 14715i);
    var var_0 = global0.zz;
    var var_1 = max(vec3<i32>(0i, -global4.b.x, i32(-1i) * -_wgslsmith_clamp_i32(global3.b, global4.c.c.x, global3.b)), -vec3<i32>(-1i, _wgslsmith_clamp_i32(abs(u_input.a.x), _wgslsmith_mult_i32(global3.b, u_input.a.x), 2147483647i), -(~2147483647i)));
    return !global4.c.e.zw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-273i, firstTrailingBit(countOneBits(u_input.a.x)), true);
    let var_1 = vec3<u32>(~u_input.b, ~(~0u), ~_wgslsmith_mod_u32(33163u, reverseBits(1u)));
    var var_2 = Struct_2(global1.x, ~(-8584i) & _wgslsmith_add_i32(global4.d, _wgslsmith_clamp_i32(-4447i, -1008i, global3.b << (u_input.b % 32u))), global1.xy);
    var var_3 = !select(!global4.c.a, select(select(select(vec2<bool>(global4.c.e.x, global3.c.x), global3.c, false), global1.xx, true), global4.c.a, vec2<bool>(u_input.b == global0.x, true)), any(!vec4<bool>(var_2.c.x, global4.c.a.x, var_2.c.x, true)));
    let var_4 = global4.b;
    global3 = Struct_2(select(any(!(!global4.c.e)), global3.a, global1.x), min(-1i, abs(82307i)), func_1());
    global2 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.x);
}

