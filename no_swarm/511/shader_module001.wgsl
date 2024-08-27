struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
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

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(63783i, i32(-2147483648)));

var<private> global1: array<vec3<f32>, 11>;

var<private> global2: vec2<u32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<bool>) -> i32 {
    global1 = array<vec3<f32>, 11>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1[_wgslsmith_index_u32(arg_1.x, 11u)]))), _wgslsmith_div_vec3_f32(vec3<f32>(119f, 823f, arg_0), vec3<f32>(1729f, -2945f, arg_0))))), arg_1.wyy, !arg_2.zyw, Struct_1(vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(arg_0 - arg_0)), arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(422f * arg_0), arg_0))), 1i, arg_0, select(arg_2.wyz, select(!arg_2.zzz, vec3<bool>(false, arg_2.x, arg_2.x), select(arg_2.ywz, vec3<bool>(true, true, arg_2.x), false)), !vec3<bool>(true, false, arg_2.x)), max(vec2<u32>(3037u >> (arg_1.x % 32u), abs(global2.x)), abs(select(vec2<u32>(4294967295u, arg_1.x), arg_1.zz, arg_2.ww)))), u_input.b);
    var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(-979f)), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -270f)), vec3<u32>(arg_1.x, arg_1.x, arg_1.x), arg_2.zyw, var_0.d, ~(~arg_1.x));
    var var_1 = arg_0;
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(397u, global2.x)), vec2<u32>(4748u, 0u))), arg_1.zz), 11u)], var_0.b ^ ~u_input.a.yyw, vec3<bool>(any(!var_0.c.zx), true, true), var_0.d, ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 30793u, 1u, 27007u), _wgslsmith_clamp_vec4_u32(u_input.a, arg_1, vec4<u32>(u_input.b, 141700u, u_input.b, 6464u))), ~abs(arg_1)));
    return -25587i ^ var_0.d.b;
}

fn func_2(arg_0: bool, arg_1: i32) -> u32 {
    global0 = array<vec2<i32>, 1>();
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(551f, -1026f, -195f, -923f), vec4<f32>(-2284f, -1107f, 367f, -2342f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-406f, 1000f, 1000f, -1336f) - vec4<f32>(-1254f, 1065f, -382f, -183f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-403f, 563f, -1000f, -214f)))) * vec4<f32>(_wgslsmith_f_op_f32(-109f * -789f), 1f, _wgslsmith_f_op_f32(-718f * -149f), _wgslsmith_div_f32(2571f, 463f)))), _wgslsmith_div_i32(func_3(-389f, u_input.a, !vec4<bool>(arg_0, false, arg_0, false)), i32(-1i) * -42336i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-447f, -717f, true))), _wgslsmith_f_op_f32(532f * -941f))), !vec3<bool>(select(arg_0, false, all(vec2<bool>(arg_0, false))), arg_0, true), _wgslsmith_div_vec2_u32(~vec2<u32>(min(global2.x, u_input.a.x), 1u), countOneBits(vec2<u32>(~global2.x, select(global2.x, 4294967295u, arg_0)))));
    let var_2 = -(~global0[_wgslsmith_index_u32(~33168u, 1u)]);
    return global2.x;
}

fn func_1() -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(select(0u, global2.x, true), 11u)]), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(0u, 11u)] - global1[_wgslsmith_index_u32(4294967295u, 11u)])))))), vec3<u32>(global2.x, ~func_2(true, 91284i >> (global2.x % 32u)), firstLeadingBit(~(u_input.b >> (1u % 32u)))), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-848f, 750f, 524f, 1155f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1606f, -1277f, 785f, 803f) * vec4<f32>(-751f, -126f, -1499f, 315f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-164f, -2179f, -684f, -871f)))), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1796f))) - _wgslsmith_f_op_f32(select(350f, _wgslsmith_f_op_f32(floor(-2224f)), all(vec3<bool>(false, true, true))))), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true))), u_input.a.zw), 2301u);
    let var_1 = _wgslsmith_mult_vec3_i32(firstTrailingBit(~abs(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d.b, var_0.d.b, -1i), vec3<i32>(2147483647i, -1i, -2147483647i)))), abs(vec3<i32>(_wgslsmith_clamp_i32(var_0.d.b, -60936i, 0i), 0i, max(reverseBits(-62917i), var_0.d.b))));
    let var_2 = min(~var_1.zy, firstTrailingBit(vec2<i32>(0i, -var_1.x)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(var_0.d.a.xwx * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -2195f, var_0.a.x) + global1[_wgslsmith_index_u32(53983u, 11u)])))))), _wgslsmith_mult_vec3_u32(~(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, 4904u, u_input.b), u_input.a.ywy) << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.e, global2.x, global2.x), var_0.b) % vec3<u32>(32u))), ~var_0.b), var_0.c, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d.a.x)) - _wgslsmith_f_op_f32(sign(var_0.d.c))), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-836f)) - _wgslsmith_f_op_f32(exp2(var_0.d.c))), 277f), firstLeadingBit(-33809i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)) - -306f), select(!vec3<bool>(true, var_0.c.x, false), select(vec3<bool>(var_0.d.d.x, false, true), select(vec3<bool>(var_0.c.x, true, false), var_0.d.d, vec3<bool>(true, var_0.d.d.x, false)), true), !(!var_0.d.d)), var_0.b.zz), ~var_0.b.x);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(822f, var_0.d.a.x, -292f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_3.a.x, var_0.a.x)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.a))), vec3<u32>(func_2(true, 0i) | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 17844u, 21502u, 12035u), vec4<u32>(76653u, 4294967295u, u_input.b, var_3.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(79135u, u_input.b, 48069u, 4294967295u), vec4<u32>(61747u, var_0.b.x, 69414u, 35903u))), ~(~5953u), ~_wgslsmith_mult_u32(var_0.e, var_0.b.x << (u_input.a.x % 32u))), !vec3<bool>(var_0.d.d.x, true, true), Struct_1(var_0.d.a, -25430i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.d.a.x))), var_0.d.d, countOneBits(~_wgslsmith_add_vec2_u32(vec2<u32>(var_3.d.e.x, u_input.b), vec2<u32>(1u, u_input.b)))), ~_wgslsmith_dot_vec3_u32(var_0.b, ~vec3<u32>(u_input.a.x, 4294967295u, 0u)));
    return _wgslsmith_clamp_u32(~(~1u), 0u, var_0.e) <= u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(vec2<bool>(true && func_1(), true)), false, false);
    global2 = reverseBits(countOneBits(~(vec2<u32>(31926u, 0u) >> (u_input.a.yy % vec2<u32>(32u))))) & vec2<u32>((u_input.b >> (~u_input.b % 32u)) ^ u_input.a.x, _wgslsmith_sub_u32(global2.x, firstLeadingBit(global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

