struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
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

var<private> global0: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(1i, 36162i, -25490i), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(-34822i, 1i, 0i), vec3<i32>(-45130i, -1i, -2157i), vec3<i32>(-58387i, 0i, 0i), vec3<i32>(-1i, 32263i, 2147483647i), vec3<i32>(34345i, i32(-2147483648), -49882i), vec3<i32>(15073i, 18248i, 32407i));

var<private> global1: array<i32, 26>;

var<private> global2: array<f32, 26> = array<f32, 26>(-1000f, -1828f, 1684f, 1000f, 1686f, 3638f, 953f, 1000f, -511f, -1000f, -1060f, -207f, 710f, 1632f, -831f, 1166f, -274f, -1131f, -647f, -600f, 1482f, -229f, -894f, -356f, 699f, 278f);

var<private> global3: vec3<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: u32, arg_3: i32) -> vec3<i32> {
    var var_0 = 1u;
    var var_1 = Struct_1(692i, -(-1i & arg_1), true, _wgslsmith_div_vec3_i32(firstTrailingBit(-u_input.d.wyw << (_wgslsmith_sub_vec3_u32(vec3<u32>(10994u, global3.x, arg_2), u_input.b.wzz) % vec3<u32>(32u))), firstTrailingBit(max(_wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(1u, 8u)], vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], -2147483647i, -9055i)), -global0[_wgslsmith_index_u32(0u, 8u)]))), ~(-23344i));
    global3 = _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, _wgslsmith_clamp_u32(0u, global3.x, u_input.c.x), ~27233u), u_input.b.zxz) << (min(select(u_input.c.xyy, vec3<u32>(80653u << (u_input.b.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(12433u, arg_2), vec2<u32>(arg_2, global3.x)), firstLeadingBit(0u)), !(!vec3<bool>(false, var_1.c, var_1.c))), u_input.c.zzy) % vec3<u32>(32u));
    var_0 = 34274u;
    let var_2 = Struct_2(Struct_1(firstTrailingBit((1656i >> (0u % 32u)) ^ _wgslsmith_add_i32(global1[_wgslsmith_index_u32(14298u, 26u)], arg_3)), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_3, arg_1) << (_wgslsmith_mod_vec2_u32(global3.zx, vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)), u_input.a), false, global0[_wgslsmith_index_u32(~select(_wgslsmith_sub_u32(1u, 1u), countOneBits(50455u), all(vec2<bool>(var_1.c, true))), 8u)], firstLeadingBit(abs(_wgslsmith_div_i32(arg_1, -4839i)))), arg_1, var_1.c);
    return var_2.a.d;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global1 = array<i32, 26>();
    global1 = array<i32, 26>();
    var var_0 = Struct_2(Struct_1(-(~_wgslsmith_clamp_i32(1i, 17596i, arg_1.a)), arg_0.x, arg_1.c, func_3(select(vec2<i32>(-34392i, global1[_wgslsmith_index_u32(52204u, 26u)]), select(vec2<i32>(arg_0.x, global1[_wgslsmith_index_u32(26605u, 26u)]), vec2<i32>(-1i, -39430i), vec2<bool>(arg_1.c, true)), true), arg_0.x, select(u_input.c.x << (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, global3.x), vec4<u32>(13043u, u_input.c.x, global3.x, 1u)), select(false, false, false)), ~select(u_input.a.x, -52932i, arg_1.c)), 0i), -13287i, !arg_1.c);
    global0 = array<vec3<i32>, 8>();
    let var_1 = select(select(vec4<bool>(false, select(true, var_0.c, arg_1.c) && (773u == global3.x), arg_1.c, true), !select(vec4<bool>(false, var_0.a.c, var_0.a.c, false), select(vec4<bool>(false, false, var_0.a.c, arg_1.c), vec4<bool>(var_0.a.c, false, arg_1.c, var_0.a.c), var_0.c), arg_1.c), any(!(!vec4<bool>(true, var_0.c, arg_1.c, arg_1.c)))), !(!select(vec4<bool>(arg_1.c, true, false, true), !vec4<bool>(var_0.c, var_0.c, arg_1.c, false), var_0.a.c)), !select(vec4<bool>(arg_1.c != false, global3.x < 0u, false, !var_0.a.c), select(select(vec4<bool>(arg_1.c, true, true, var_0.c), vec4<bool>(true, false, arg_1.c, true), vec4<bool>(var_0.c, arg_1.c, true, false)), select(vec4<bool>(true, false, true, arg_1.c), vec4<bool>(var_0.a.c, true, arg_1.c, var_0.a.c), vec4<bool>(arg_1.c, false, var_0.c, var_0.c)), select(true, true, arg_1.c)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, arg_1.c), var_0.c), vec4<bool>(var_0.a.c, var_0.a.c, var_0.a.c, true), select(vec4<bool>(arg_1.c, var_0.a.c, var_0.a.c, false), vec4<bool>(arg_1.c, true, true, var_0.a.c), true))));
    return abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(20406u >> (u_input.b.x % 32u), 1u << (1u % 32u)), arg_2));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_2 {
    global3 = select(abs(u_input.b.wwy), select(vec3<u32>(firstLeadingBit(func_2(vec4<i32>(-5845i, -20775i, -1i, u_input.d.x), Struct_1(global1[_wgslsmith_index_u32(44789u, 26u)], global1[_wgslsmith_index_u32(global3.x, 26u)], true, u_input.d.zwy, -2147483647i), 1u)), 39248u, ~u_input.c.x), ~select(abs(u_input.c.wzx), u_input.b.wyz, select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), false), -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(global1[_wgslsmith_index_u32(arg_1, 26u)], 22044i, u_input.a.x, -40453i), u_input.d), u_input.d) == global1[_wgslsmith_index_u32(abs(arg_1), 26u)]);
    global3 = ~_wgslsmith_add_vec3_u32(arg_0.xzz >> ((~vec3<u32>(4294967295u, global3.x, arg_0.x) << (vec3<u32>(74332u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), ~u_input.b.zxw);
    var var_0 = Struct_1(countOneBits(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-3557i, 0i, global1[_wgslsmith_index_u32(25868u, 26u)]), vec3<i32>(0i, u_input.d.x, 0i)) << (~arg_0.yww % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_1, 26u)], u_input.a.x, -2147483647i, 2623i), vec4<i32>(-1i, u_input.d.x, 0i, global1[_wgslsmith_index_u32(40128u, 26u)])), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 26u)], 20299i), -1i))), -29205i, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)))) && ((true | select(false, true, false)) & false), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)] & abs(i32(-1i) * -3510i), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(8185u, u_input.c.x)), 26u)], 1i), reverseBits(u_input.d.x));
    global2 = array<f32, 26>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(478f, -1314f, 689f, global2[_wgslsmith_index_u32(147091u, 26u)]) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], 174f, -1005f) - vec4<f32>(global2[_wgslsmith_index_u32(global3.x, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], -941f, 414f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * global2[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_f_op_f32(271f * -350f), 1000f, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.x, arg_1, arg_0.x), 46273u), 26u)]) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-607f, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(12392u, 26u)], global2[_wgslsmith_index_u32(60579u, 26u)])))))));
    return Struct_2(Struct_1(global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(1605u, arg_0.x) >> (func_2(u_input.d, Struct_1(21474i, 1i, true, global0[_wgslsmith_index_u32(arg_1, 8u)], u_input.d.x), u_input.b.x) % 32u)), 26u)], _wgslsmith_add_i32(_wgslsmith_mod_i32(21672i ^ u_input.d.x, u_input.d.x), ~(u_input.a.x ^ var_0.a)), any(select(!vec3<bool>(var_0.c, true, var_0.c), vec3<bool>(true, var_0.c, true), !vec3<bool>(var_0.c, var_0.c, var_0.c))), countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, arg_0.x, 1u) >> (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u)), vec3<u32>(arg_0.x, u_input.c.x, global3.x)), 8u)]), _wgslsmith_sub_i32(u_input.d.x, 13483i)), firstTrailingBit(var_0.b), ~countOneBits(u_input.b.x & 1u) >= 41893u);
}

fn func_4(arg_0: Struct_2) -> u32 {
    global2 = array<f32, 26>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 26u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.x, 26u)])) - global2[_wgslsmith_index_u32(4294967295u, 26u)]), global2[_wgslsmith_index_u32(1u, 26u)], !all(vec2<bool>(arg_0.c, false))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-649f, _wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(619f * global2[_wgslsmith_index_u32(u_input.c.x, 26u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 26u)])))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-712f, -365f, global2[_wgslsmith_index_u32(u_input.b.x, 26u)]) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], -456f, global2[_wgslsmith_index_u32(1u, 26u)])), vec3<f32>(2956f, -397f, global2[_wgslsmith_index_u32(global3.x, 26u)])) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(865f, global2[_wgslsmith_index_u32(3886u, 26u)], global2[_wgslsmith_index_u32(6024u, 26u)]), vec3<f32>(1639f, global2[_wgslsmith_index_u32(66223u, 26u)], -469f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-882f, global2[_wgslsmith_index_u32(global3.x, 26u)], 379f) * vec3<f32>(global2[_wgslsmith_index_u32(global3.x, 26u)], global2[_wgslsmith_index_u32(global3.x, 26u)], global2[_wgslsmith_index_u32(u_input.b.x, 26u)])))))));
    let var_2 = Struct_2(arg_0.a, ~(~_wgslsmith_sub_i32(-43898i, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.d.x, -13732i)))), arg_0.a.c);
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * global2[_wgslsmith_index_u32((u_input.c.x >> (0u % 32u)) >> (global3.x % 32u), 26u)])), -212f, arg_0.c));
    return abs(_wgslsmith_dot_vec2_u32(max(vec2<u32>(~45846u, ~1435u), ~global3.yy), abs(countOneBits(vec2<u32>(4294967295u, global3.x))) ^ global3.xy));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(73338u, 26u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(8113u, arg_2.x << (0u % 32u)), 0u), 26u)], all(select(vec4<bool>(select(false, arg_3.c, true), arg_0, false, any(vec2<bool>(arg_0, arg_0))), vec4<bool>(false, !arg_0, arg_3.c, true), !select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, true, false, arg_3.a.c), false)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(100144u, 26u)])) * _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.x, 26u)] * global2[_wgslsmith_index_u32(4294967295u, 26u)]))), _wgslsmith_f_op_f32(f32(-1f) * -281f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32((38686u << (arg_2.x % 32u)) << (u_input.b.x % 32u), 26u)]))));
    var_0 = _wgslsmith_f_op_f32(1760f - -335f);
    var var_2 = vec4<i32>(113881i, firstLeadingBit(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, 1419u ^ global3.x), 26u)]), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(firstTrailingBit(arg_2.x), ~102799u), arg_2.x), ~4294967295u), 26u)], ~(~(_wgslsmith_mult_i32(arg_3.b, 7184i) | u_input.d.x)));
    global2 = array<f32, 26>();
    return Struct_1(select(42214i, u_input.a.x, arg_3.a.c), 2147483647i, all(vec2<bool>(all(!vec3<bool>(false, arg_0, arg_3.c)), true | (arg_3.c & true))), select(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(42287i, arg_3.a.e, -26106i), vec3<i32>(var_2.x, global1[_wgslsmith_index_u32(0u, 26u)], 8448i), vec3<bool>(arg_3.c, arg_0, arg_0)), u_input.d.zxy, ~var_2.wxx), min(-vec3<i32>(42016i, arg_3.b, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], -9049i, -1i), vec3<i32>(57403i, 69993i, var_2.x)))), select(~min(vec3<i32>(2147483647i, u_input.a.x, -13752i), vec3<i32>(u_input.d.x, u_input.a.x, -2147483647i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_2.zwy, vec3<i32>(global1[_wgslsmith_index_u32(101033u, 26u)], 0i, u_input.a.x)), ~u_input.d.wxx), !(!vec3<bool>(false, false, arg_3.c))), vec3<bool>(true, true, true)), arg_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(false, global2[_wgslsmith_index_u32(func_4(func_1(abs(u_input.c), firstLeadingBit(u_input.b.x) << (global3.x % 32u))), 26u)], vec4<u32>(~36681u, 1u, ~((1u | u_input.c.x) >> (func_2(vec4<i32>(u_input.d.x, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.d.x, -2147483647i), Struct_1(u_input.a.x, u_input.d.x, true, u_input.d.xwx, 2147483647i), 25874u) % 32u)), 86995u), Struct_2(func_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 24991u, global3.x), u_input.b), 41013u).a, _wgslsmith_sub_i32(-54356i, min(func_1(vec4<u32>(u_input.c.x, 0u, global3.x, 37195u), u_input.c.x).a.a, global1[_wgslsmith_index_u32(u_input.b.x, 26u)])), ~u_input.c.x == abs(global3.x)));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(482f, -1148f) + vec2<f32>(global2[_wgslsmith_index_u32(global3.x, 26u)], global2[_wgslsmith_index_u32(global3.x, 26u)]))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(4294967295u | global3.x, 26u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.b.x, 26u)]))));
    let var_2 = func_1(~_wgslsmith_sub_vec4_u32(u_input.c, firstLeadingBit(abs(vec4<u32>(41095u, u_input.b.x, 7327u, 62681u)))), global3.x);
    let var_3 = func_1(vec4<u32>(global3.x, u_input.b.x, ~countOneBits(_wgslsmith_mult_u32(5567u, u_input.b.x)), ~96339u), _wgslsmith_add_u32(46833u, func_2(_wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.b, -1i, var_2.a.e, global1[_wgslsmith_index_u32(1u, 26u)]), -vec4<i32>(var_0.a, var_2.b, var_0.d.x, u_input.d.x)), Struct_1(1i, _wgslsmith_add_i32(-1i, 0i), var_0.c != false, u_input.d.zxy, var_0.b), 15837u | global3.x)));
    let var_4 = true;
    let var_5 = _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(~u_input.b.x, global3.x)), vec2<u32>(~7575u, u_input.b.x));
    global3 = _wgslsmith_mult_vec3_u32(~(~u_input.b.wzz), vec3<u32>(var_5, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_5 ^ global3.x, var_5 ^ 1u), var_5), func_4(func_1(u_input.b, 1u)) | _wgslsmith_mod_u32(~0u, var_5)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(936f, -330f, true || func_5(true, 264f, vec4<u32>(40412u, var_5, global3.x, 3893u), var_2).c)) - -808f), _wgslsmith_f_op_f32(var_1.x - var_1.x));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(global3.x, 26u)], -826f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1113f)), var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-438f, var_1.x)));
}

