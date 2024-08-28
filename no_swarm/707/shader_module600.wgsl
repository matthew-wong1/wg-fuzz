struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_2, 24>;

var<private> global3: vec4<u32> = vec4<u32>(80481u, 4294967295u, 4294967295u, 1u);

var<private> global4: vec3<u32> = vec3<u32>(33790u, 9422u, 4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_2(arg_1.b, arg_1.a, _wgslsmith_f_op_f32(-885f - 1011f));
    var var_1 = ~global1.wyw << (global3.xwy % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2379f, _wgslsmith_f_op_f32(ceil(1493f)), _wgslsmith_f_op_f32(-var_0.c))));
    global0 = 24899i;
    let var_3 = vec2<u32>(~u_input.a.x, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(select(0u, global3.x, var_0.b.a), 9617u & u_input.a.x), ~(~global4.x)), countOneBits(global3.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.b));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 24u)];
    var var_1 = arg_0;
    var var_2 = 53284u;
    var var_3 = vec2<f32>(-1293f, _wgslsmith_f_op_f32(func_3(0i, global2[_wgslsmith_index_u32(~(~global4.x), 24u)])));
    var_2 = _wgslsmith_sub_u32(~15638u, reverseBits(~min(u_input.a.x, 8611u)) & ~9932u);
    return arg_2;
}

fn func_1() -> u32 {
    global0 = select(-u_input.d.x, u_input.c.x, all(vec3<bool>(false, true, false)));
    global0 = max(u_input.e, ~_wgslsmith_mod_i32(-1i, func_2(global2[_wgslsmith_index_u32(~1u, 24u)], all(vec2<bool>(false, false)), i32(-1i) * -2147483647i)));
    return _wgslsmith_div_u32(39361u, ~_wgslsmith_mod_u32(~global4.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, global4.x, 45311u, 0u)), min(vec4<u32>(global4.x, u_input.a.x, global3.x, 56789u), vec4<u32>(0u, u_input.a.x, global3.x, 89873u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1310f + _wgslsmith_div_f32(976f, -123f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(236f, -812f) * _wgslsmith_f_op_f32(ceil(-1388f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1329f + 175f)))), global1.xww, vec3<i32>(-1i, 0i, -1i));
    var var_2 = ~26356u;
    var var_3 = global1.x;
    let var_4 = select(vec4<u32>(~func_1(), reverseBits(u_input.a.x) | global4.x, 4294967295u, ~u_input.a.x) | reverseBits(~(~vec4<u32>(73933u, global3.x, 12533u, global4.x))), _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 1u, u_input.a.x, 4294967295u), vec4<u32>(global3.x, u_input.a.x, 57745u, 43792u)), func_1(), 8987u, global4.x), vec4<u32>(~global4.x, global3.x, 4294967295u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, 13411u, 6147u), global3.x))), true);
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(749f, 902f), _wgslsmith_div_f32(-1229f, 270f), var_1.a & false)) + _wgslsmith_f_op_f32(-798f + _wgslsmith_div_f32(1271f, -2436f))))), _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1.c.x, _wgslsmith_f_op_f32(floor(1725f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-167f - var_1.c.x), _wgslsmith_f_op_f32(-var_1.c.x)) - var_1.c.x)));
    global4 = _wgslsmith_sub_vec3_u32(select(_wgslsmith_div_vec3_u32(~vec3<u32>(global3.x, var_4.x, 57643u), vec3<u32>(reverseBits(u_input.a.x), 1u, _wgslsmith_div_u32(u_input.a.x, 38377u))), vec3<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(31620u, global3.x), 4294967295u), _wgslsmith_div_u32(u_input.a.x ^ 0u, 11185u)), select(any(vec4<bool>(false, true, true, var_0)), var_0, false)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~global3.xzy, ~(~vec3<u32>(global4.x, 0u, global4.x))), _wgslsmith_add_vec3_u32(global3.wwx, vec3<u32>(global4.x, 3826u, global4.x) ^ ~vec3<u32>(var_4.x, var_4.x, 0u)), var_4.ywy));
    var var_6 = vec4<i32>(2356i, -var_1.e.x, 23100i, _wgslsmith_add_i32(-(~abs(-39913i)), -12788i));
    let x = u_input.a;
    s_output = StorageBuffer(1u ^ ~min(u_input.a.x, global4.x), select(u_input.c, max(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -23600i, 2147483647i), vec3<i32>(var_6.x, 2147483647i, -1236i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.d.x), vec3<i32>(var_6.x, 5637i, var_6.x))) >> (~global3.wzw % vec3<u32>(32u)), select(vec3<bool>(all(vec2<bool>(var_1.a, var_0)), var_1.a, true), !vec3<bool>(var_1.a, var_0, var_0), var_0)));
}

