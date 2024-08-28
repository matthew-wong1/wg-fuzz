struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<u32>(0u, 76804u, 1u), i32(-2147483648)));

var<private> global2: array<bool, 30> = array<bool, 30>(false, false, true, true, true, false, false, true, false, true, true, true, true, true, true, false, true, false, false, false, false, false, false, false, true, true, false, true, true, true);

var<private> global3: array<f32, 31> = array<f32, 31>(213f, 842f, -723f, 190f, 189f, 489f, 668f, -627f, 101f, -623f, -790f, 587f, -458f, 914f, -1207f, 177f, 243f, 450f, 179f, -185f, 144f, -100f, -1000f, -576f, 325f, -432f, 1490f, -1868f, 1342f, 847f, 387f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1.d.a.zy ^ ~select(_wgslsmith_add_vec2_u32(vec2<u32>(56297u, 68352u), arg_1.d.a.xy), vec2<u32>(1u, 1u), -1595f != _wgslsmith_f_op_f32(1000f * global3[_wgslsmith_index_u32(arg_1.b.x, 31u)]));
    return global3[_wgslsmith_index_u32(abs(0u), 31u)];
}

fn func_3() -> vec2<i32> {
    global3 = array<f32, 31>();
    var var_0 = ~u_input.d;
    let var_1 = select(true, any(select(vec4<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], false)), true, true, global2[_wgslsmith_index_u32(abs(u_input.c.x), 30u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)] || global2[_wgslsmith_index_u32(u_input.c.x, 30u)], false, 30034u >= u_input.c.x), !select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], true, global2[_wgslsmith_index_u32(33254u, 30u)], false), true))), !global2[_wgslsmith_index_u32(1u >> (firstLeadingBit(~u_input.c.x) % 32u), 30u)]);
    global1 = array<Struct_1, 1>();
    let var_2 = u_input.c.x != 87254u;
    return _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), select(-59026i, u_input.a, global2[_wgslsmith_index_u32(u_input.c.x, 30u)])), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-26717i, u_input.e, -908i, u_input.d.x)), u_input.e)) | _wgslsmith_mult_vec2_i32(var_0.zx, var_0.wy), select(_wgslsmith_div_vec2_i32(~vec2<i32>(14858i, u_input.b.x) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), vec2<i32>(var_0.x, u_input.b.x)), max(_wgslsmith_clamp_vec2_i32(vec2<i32>(32696i, -15609i), u_input.b, vec2<i32>(-2147483647i, 0i)), -vec2<i32>(-1i, -35312i))), vec2<i32>(-firstTrailingBit(0i), i32(-1i) * -1i), all(vec3<bool>(any(vec3<bool>(true, true, false)), true, false))));
}

fn func_2() -> vec2<i32> {
    global0 = array<Struct_1, 6>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, ~u_input.c.x & ~280u), 6u)];
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], global3[_wgslsmith_index_u32(u_input.c.x, 31u)]) + vec2<f32>(812f, global3[_wgslsmith_index_u32(0u, 31u)]))))))));
    let var_1 = vec4<i32>(38626i, _wgslsmith_mult_i32(u_input.e, ~u_input.b.x), u_input.b.x ^ u_input.e, u_input.b.x);
    var var_2 = firstLeadingBit(var_1);
    let var_3 = _wgslsmith_f_op_f32(abs(var_0.x)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_2(global2[_wgslsmith_index_u32(37965u, 30u)], vec4<u32>(u_input.c.x, 20939u, u_input.c.x, u_input.c.x), u_input.d.xx, global1[_wgslsmith_index_u32(72930u, 1u)]), Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], vec4<u32>(4294967295u, u_input.c.x, 39053u, u_input.c.x), vec2<i32>(-2147483647i, var_1.x), global1[_wgslsmith_index_u32(62366u, 1u)]))))) - -1581f) - 1029f);
    var var_4 = Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], u_input.c, -_wgslsmith_div_vec2_i32(~func_2(), _wgslsmith_add_vec2_i32(u_input.d.wz, vec2<i32>(var_1.x, -51694i)) << (u_input.c.zz % vec2<u32>(32u))), Struct_1(u_input.c.wxy, _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(var_1, vec4<i32>(2147483647i, -1i, var_1.x, -1i)), 1i)));
    global2 = array<bool, 30>();
    var_2 = _wgslsmith_mult_vec4_i32(var_1, ~vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d.zzz, max(vec3<i32>(6247i, var_2.x, -38299i), vec3<i32>(u_input.b.x, 68406i, -19405i))), -2147483647i, -2147483647i, _wgslsmith_mod_i32(-var_2.x, _wgslsmith_dot_vec2_i32(var_4.c, var_4.c))));
    var var_5 = var_1.zwz;
    let x = u_input.a;
    s_output = StorageBuffer(select(var_4.d.a, reverseBits((var_4.b.xyz >> (u_input.c.wxy % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(u_input.c.wwy, vec3<u32>(var_4.b.x, 1u, 0u)) % vec3<u32>(32u))), true));
}

