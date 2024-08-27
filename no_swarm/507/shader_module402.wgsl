struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -3678i;

var<private> global1: array<bool, 6> = array<bool, 6>(false, false, true, true, true, false);

var<private> global2: array<u32, 18> = array<u32, 18>(0u, 81240u, 71805u, 1u, 65920u, 12280u, 0u, 49845u, 0u, 27140u, 1u, 4294967295u, 1u, 4294967295u, 4294967295u, 0u, 4294967295u, 7374u);

var<private> global3: vec4<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    global0 = ~abs(firstTrailingBit(-21582i));
    global3 = _wgslsmith_add_vec4_i32(vec4<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-2495i, -2147483647i, global3.x) >> (u_input.c.wxw % vec3<u32>(32u)), -global3.yxw), -1i), max(16721i, global3.x) | -63192i, _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_clamp_vec2_i32(global3.yw, min(global3.wz, global3.yw), vec2<i32>(-8901i, global3.x))), select(0i, 1i, true) >> (~(~global2[_wgslsmith_index_u32(50961u, 18u)]) % 32u)), vec4<i32>(max(0i, countOneBits(_wgslsmith_dot_vec2_i32(global3.zw, vec2<i32>(global3.x, 2147483647i)))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(global3.x, 0i, global3.x, global3.x), -vec4<i32>(global3.x, global3.x, global3.x, global3.x)), 2147483647i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, global3.x, 0i), global3.xzx), global3.x) >> (4294967295u % 32u), global3.x));
    global1 = array<bool, 6>();
    global1 = array<bool, 6>();
    global1 = array<bool, 6>();
    return vec3<u32>(select(~_wgslsmith_add_u32(~u_input.b, 1u), 26663u, global1[_wgslsmith_index_u32(select(1u, 4294967295u, global1[_wgslsmith_index_u32(reverseBits(u_input.b), 6u)]), 6u)]), 0u, firstLeadingBit(2457u));
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-408f, 1715f) * _wgslsmith_f_op_f32(f32(-1f) * -264f)))), !global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, u_input.c.x), 18u)] << (~global2[_wgslsmith_index_u32(~740u, 18u)] % 32u), 18u)], 6u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1007f)), var_0.a, 300f)));
    var var_2 = Struct_3(~vec2<u32>(_wgslsmith_dot_vec3_u32(func_3(), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(u_input.a.x, 2433u, 7683u))), global2[_wgslsmith_index_u32(~19735u, 18u)]), _wgslsmith_add_u32(20496u, _wgslsmith_mod_u32(reverseBits(_wgslsmith_mult_u32(u_input.a.x, global2[_wgslsmith_index_u32(50313u, 18u)])), 11079u)), _wgslsmith_mult_vec4_i32(firstLeadingBit(min(~vec4<i32>(arg_0, 2147483647i, 0i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 78316i, -3909i, 57818i), vec4<i32>(1i, global3.x, -9824i, arg_0)))), _wgslsmith_mult_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(arg_0, arg_0, global3.x, global3.x))), vec4<i32>(1i, min(global3.x, arg_0), ~(-15234i), _wgslsmith_mult_i32(-6081i, arg_0)))), var_0.b);
    let var_3 = var_0;
    var var_4 = -countOneBits(-1i);
    return firstLeadingBit((-21800i ^ -arg_0) ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(var_2.c, var_2.c, vec4<i32>(var_2.c.x, 1i, var_2.c.x, global3.x)), vec4<i32>(var_2.c.x, global3.x, global3.x, 4391i)), -_wgslsmith_mult_i32(global3.x, global3.x)));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    global2 = array<u32, 18>();
    var var_0 = Struct_3(vec2<u32>(global2[_wgslsmith_index_u32(~u_input.a.x, 18u)], abs(countOneBits(~4294967295u))), 24663u, vec4<i32>(-global3.x, _wgslsmith_mult_i32(global3.x, global3.x) >> (abs(u_input.b) % 32u), -_wgslsmith_add_i32(-25531i, arg_0.x), 46117i), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6500u, 18u)], 18u)], 46575u) & u_input.c.xw), ~(~u_input.a.yz)), 18u)]), 6u)]);
    let var_1 = var_0.d;
    global3 = ~vec4<i32>(~arg_0.x, func_2(select(0i, var_0.c.x, any(vec3<bool>(true, false, false)))), var_0.c.x, -(~max(var_0.c.x, -2147483647i)));
    var var_2 = ~(~u_input.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-307f))))) > _wgslsmith_f_op_f32(floor(1949f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 18>();
    var var_0 = -2147483647i;
    let var_1 = any(vec3<bool>(true, !func_1(~global3.wz), true));
    let var_2 = Struct_2(~4294967295u < u_input.c.x, Struct_1(1848f, true), global3.wy & vec2<i32>(global3.x << (select(4294967295u, 1u, true) % 32u), abs(countOneBits(global3.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1375f * _wgslsmith_f_op_f32(abs(-1236f)))), any(!(!vec2<bool>(var_1, false)))), vec3<i32>(-_wgslsmith_add_i32(abs(global3.x), -1i), _wgslsmith_clamp_i32(1i, global3.x, ~min(global3.x, global3.x)), global3.x));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1072f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b.a))), !any(vec2<bool>(false, var_2.a))))), global1[_wgslsmith_index_u32(max(31371u, u_input.a.x), 6u)]);
    var var_4 = ~firstLeadingBit(abs(-35752i | reverseBits(global3.x)));
    var var_5 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-955f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-970f)), 213f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, _wgslsmith_f_op_f32(max(var_3.a, _wgslsmith_f_op_f32(-var_5.x))), vec2<f32>(1143f, _wgslsmith_f_op_f32(-var_3.a)), -3260i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_5.x, var_2.d.a, global2[_wgslsmith_index_u32(u_input.b, 18u)] >= global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)])) - _wgslsmith_f_op_f32(abs(328f))), var_3.a)));
}

