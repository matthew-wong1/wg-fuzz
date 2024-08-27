struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(49231u, 23192u, 54u, 0u);

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 5>;

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = vec3<bool>(true, true, true);
    global3 = array<Struct_1, 11>();
    var var_1 = global1.a;
    var var_2 = vec4<i32>(-1i) * -vec4<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global1.c.a, global1.a.a), max(vec3<i32>(var_1.d.x, -16066i, -18914i), global1.d.e)), -2147483647i >> (u_input.a.x % 32u), var_1.a.x);
    global3 = array<Struct_1, 11>();
    return ~u_input.a.x;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(func_3(), 5u)];
    let var_1 = global2[_wgslsmith_index_u32(abs(global0.x), 5u)];
    var var_2 = arg_0.x;
    global0 = ~(~u_input.a);
    var var_3 = ~((firstTrailingBit(4294967295u) << (~global0.x % 32u)) & u_input.a.x) >> (~firstLeadingBit(~_wgslsmith_sub_u32(u_input.a.x, 4294967295u)) % 32u);
    return Struct_2(Struct_1(-select(vec3<i32>(var_0.c.a.x, 12474i, global1.d.d.x), firstTrailingBit(vec3<i32>(var_0.c.c.x, var_0.a.e.x, var_1.c.d.x)), !arg_0.zzx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.c.b.x, global1.a.b.x)))), abs(max(vec2<i32>(var_0.a.e.x, global1.c.c.x) | vec2<i32>(u_input.d, 19688i), abs(vec2<i32>(u_input.e.x, global1.a.d.x)))), -countOneBits(firstTrailingBit(u_input.e.zx)), _wgslsmith_sub_vec3_i32(min(select(var_1.c.a, var_1.d.e, arg_0.zyw), global1.a.a), countOneBits(-vec3<i32>(var_1.d.a.x, var_0.a.e.x, global1.a.d.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.b.x, 2347f, 1618f), _wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(281f, var_0.e.x, var_1.d.b.x)), select(arg_0.xww, vec3<bool>(arg_0.x, false, arg_0.x), false))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1486f, global1.d.b.x, 264f) + var_1.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x - var_1.b.x)), global1.c.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global1.a.b.x))))))), Struct_1(global1.c.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-295f, var_1.a.b.x)) * global1.d.b)), -var_0.c.c, ~(-_wgslsmith_div_vec2_i32(global1.c.d, vec2<i32>(u_input.c, global1.d.a.x))), var_1.d.a), Struct_1(u_input.e.xxw, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.e))), global1.d.c, reverseBits(var_0.a.c) & max(var_1.a.c, vec2<i32>(var_0.a.e.x, 4951i)), min(_wgslsmith_sub_vec3_i32(var_0.c.a, var_1.a.e) << (u_input.a.zxy % vec3<u32>(32u)), var_0.a.e)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.b.x * _wgslsmith_f_op_f32(-878f + global1.c.b.x)), _wgslsmith_f_op_f32(sign(var_1.d.b.x))), _wgslsmith_f_op_f32(floor(var_1.d.b.x))));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    let var_0 = func_2(!(!vec4<bool>(!arg_0.x, all(arg_0), all(arg_0), all(vec4<bool>(false, true, arg_0.x, arg_0.x)))));
    var var_1 = -247f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.b.x), var_0.c.b.x, true & arg_0.x)) - -626f);
    let var_2 = func_2(select(!vec4<bool>(true, false, all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), var_0.c.e.x == global1.d.a.x), vec4<bool>(arg_0.x, true, !any(arg_0.wwx), !any(arg_0.xyx)), select(arg_0, select(select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(true, true, false, false), true), select(arg_0, arg_0, false), arg_0.x), !select(arg_0, arg_0, arg_0)))).d;
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(0i, var_0.a.e.x), u_input.d, _wgslsmith_div_i32(~u_input.c & _wgslsmith_mod_i32(global1.c.e.x, u_input.b), abs(i32(-1i) * -55039i))), _wgslsmith_f_op_vec2_f32(ceil(var_2.b)), select(~var_0.c.a.zy, vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.e.x, var_2.e.x, global1.a.c.x, var_0.d.c.x), u_input.e), abs(min(var_2.a.x, u_input.e.x))), select(select(arg_0.zy, !arg_0.xw, !arg_0.zz), arg_0.yx, true)), ~var_2.c, max(firstTrailingBit(~vec3<i32>(global1.a.c.x, -2147483647i, var_2.d.x)), vec3<i32>(abs(32365i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, var_2.c.x, var_2.c.x), u_input.e), -44205i) ^ ~u_input.e.ywy));
    return -(-(-global1.c.e.x << (abs(u_input.a.x) % 32u)) ^ var_3.d.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    let var_0 = global1.d;
    var var_1 = arg_1;
    let var_2 = arg_2;
    var_1 = Struct_1(~var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b * func_2(vec4<bool>(true, true, true, true)).e) - vec2<f32>(-271f, -1626f)), var_0.e.xx >> (firstTrailingBit(vec2<u32>(~u_input.a.x, min(1u, 12796u))) % vec2<u32>(32u)), ~(~max(vec2<i32>(-1i, -2147483647i), global1.a.a.zz)), -var_0.e | min(vec3<i32>(-var_1.a.x, var_0.e.x, -var_0.e.x), firstLeadingBit(~vec3<i32>(var_0.c.x, var_1.a.x, u_input.c))));
    global1 = func_2(!select(vec4<bool>(true, true, true, false), vec4<bool>(all(vec4<bool>(true, true, false, true)), true, true, arg_2.x < -1967f), vec4<bool>(true, true, true, 108327u == global0.x)));
    return ~11107i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(1u, 5u)];
    var var_0 = vec2<i32>(_wgslsmith_div_i32(17445i, global1.c.a.x), global1.c.e.x);
    global2 = array<Struct_2, 5>();
    global3 = array<Struct_1, 11>();
    var_0 = vec2<i32>(-func_4(max(func_1(vec4<bool>(false, true, true, true)), ~global1.a.e.x), global3[_wgslsmith_index_u32(60891u | _wgslsmith_clamp_u32(125518u, 1u, global0.x), 11u)], vec4<f32>(global1.c.b.x, 1255f, _wgslsmith_f_op_f32(exp2(global1.a.b.x)), _wgslsmith_div_f32(global1.e.x, -2020f))), global1.a.e.x & 2147483647i);
    let var_1 = global1.b;
    var var_2 = -1i;
    var var_3 = global2[_wgslsmith_index_u32(((global0.x ^ countOneBits(u_input.a.x)) ^ _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.a.yyx, u_input.a.xzw), abs(vec3<u32>(38442u, global0.x, 65684u)))) >> (~_wgslsmith_sub_u32(reverseBits(4294967295u), firstLeadingBit(4294967295u)) % 32u), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(639f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.b.x * var_3.d.b.x), _wgslsmith_div_f32(-251f, var_3.d.b.x)) - 109f), _wgslsmith_div_f32(var_3.e.x, 1686f)), var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.d.b.x, var_1.x))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(var_1.xz, _wgslsmith_f_op_vec2_f32(round(var_3.a.b)), false))))));
}

