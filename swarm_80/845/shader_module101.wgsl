struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<i32>, 20>;

var<private> global2: array<bool, 3>;

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = 4294967295u;
    let var_1 = 1u;
    let var_2 = arg_2.c.c.a;
    var var_3 = any(select(select(select(arg_2.c.b, select(arg_2.c.b, vec2<bool>(true, var_2.a), arg_2.a.yx), vec2<bool>(true, true)), vec2<bool>(global2[_wgslsmith_index_u32(firstLeadingBit(arg_2.c.c.b.x), 3u)], any(vec2<bool>(false, arg_2.c.b.x))), !(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 3u)], var_2.a))), select(!(!vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 3u)], false)), !(!arg_2.c.b), true), arg_2.c.c.a.a));
    var var_4 = Struct_1(all(vec4<bool>(select(var_2.b, var_2.b, false) != max(u_input.d, u_input.c.x), select(any(arg_2.a), select(false, false, arg_1.a.a), global2[_wgslsmith_index_u32(~49460u, 3u)]), !(arg_2.c.b.x != global2[_wgslsmith_index_u32(arg_2.b, 3u)]), false)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -246f));
    return arg_1.b;
}

fn func_2(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_3(min(vec2<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(70706u, 13513u), ~1u)), ~func_3(vec3<u32>(141331u, 103959u, 40979u), Struct_2(Struct_1(true, global0.x, 1086f), vec2<u32>(48801u, 1u), vec4<f32>(arg_0.x, 299f, -1000f, arg_0.x), Struct_1(true, -6637i, arg_0.x)), Struct_4(vec3<bool>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(15967u, 3u)], false), 4294967295u, Struct_3(vec2<u32>(15091u, 92247u), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)]), Struct_2(Struct_1(false, 0i, arg_0.x), vec2<u32>(0u, 0u), vec4<f32>(182f, arg_0.x, arg_0.x, arg_0.x), Struct_1(global2[_wgslsmith_index_u32(7810u, 3u)], 3982i, 898f)), Struct_1(global2[_wgslsmith_index_u32(26483u, 3u)], global0.x, 1196f))))), vec2<bool>(true, global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(0u, 1u)) ^ 1u, 3u)]), Struct_2(Struct_1(any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(556u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)])), -1i, _wgslsmith_f_op_f32(ceil(1000f))), vec2<u32>(0u, ~1u >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(step(-894f, 421f)), _wgslsmith_f_op_f32(floor(400f)), _wgslsmith_f_op_f32(-arg_0.x))), Struct_1(false, u_input.b, -889f)), Struct_1(select(_wgslsmith_mult_i32(645i, 48538i) <= u_input.a.x, global2[_wgslsmith_index_u32(abs(~41382u), 3u)], all(vec2<bool>(global2[_wgslsmith_index_u32(42414u, 3u)], global2[_wgslsmith_index_u32(13021u, 3u)]))), _wgslsmith_sub_i32(firstLeadingBit(global0.x), 24167i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1912f - 2415f)))));
    var var_1 = max(~(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.a.x, var_0.a.x, var_0.c.b.x), 93655u << (var_0.c.b.x % 32u))), firstTrailingBit(~(~var_0.c.b.x << (_wgslsmith_sub_u32(var_0.a.x, 1u) % 32u))));
    let var_2 = Struct_3(var_0.c.b, !vec2<bool>(!any(vec4<bool>(false, true, true, var_0.c.d.a)), global2[_wgslsmith_index_u32(1u, 3u)]), var_0.c, var_0.c.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.c.xx - vec2<f32>(var_0.d.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.c) * _wgslsmith_f_op_f32(max(-1000f, var_2.d.c))))));
    global1 = array<vec4<i32>, 20>();
    return select(select(select(!vec3<bool>(var_0.c.d.a, var_0.d.a, var_2.b.x), select(!vec3<bool>(false, var_0.b.x, false), select(vec3<bool>(global2[_wgslsmith_index_u32(var_2.a.x, 3u)], false, true), vec3<bool>(var_2.d.a, var_0.c.d.a, true), true), select(vec3<bool>(false, global2[_wgslsmith_index_u32(var_2.a.x, 3u)], true), vec3<bool>(var_0.b.x, false, false), vec3<bool>(var_2.c.d.a, var_0.c.a.a, var_0.d.a))), !(!vec3<bool>(false, true, var_2.c.a.a))), !select(vec3<bool>(true, true, false), select(vec3<bool>(var_2.d.a, true, var_0.b.x), vec3<bool>(false, var_0.d.a, true), false), var_2.d.a && false), var_0.c.a.a), vec3<bool>((select(-35160i, -2147483647i, true) ^ firstTrailingBit(-1i)) <= abs(global0.x ^ 22430i), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(88245u, var_0.a.x, 1u, 4294967295u), vec4<u32>(var_0.a.x, 20856u, var_2.a.x, var_2.a.x)) & _wgslsmith_mod_u32(var_2.c.b.x, 1u), reverseBits(~var_2.c.b.x)), 3u)], var_2.c.a.a), any(select(select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 3u)], false, true, true), vec4<bool>(true, var_2.c.d.a, false, global2[_wgslsmith_index_u32(var_2.a.x, 3u)]), global2[_wgslsmith_index_u32(38705u, 3u)] | var_0.d.a), vec4<bool>(false, all(vec2<bool>(false, global2[_wgslsmith_index_u32(var_2.a.x, 3u)])), false, true), global2[_wgslsmith_index_u32(var_2.a.x, 3u)])));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_4, arg_3: i32) -> Struct_1 {
    let var_0 = true;
    global2 = array<bool, 3>();
    var var_1 = -reverseBits(_wgslsmith_div_i32(-20309i, arg_3));
    global0 = select(~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, ~arg_3, 1i, 2147483647i & arg_2.c.d.b), countOneBits(vec4<i32>(arg_2.c.d.b, 26505i, -62947i, global0.x))), vec4<i32>(arg_3, countOneBits(-6731i), 1i, 1i), !vec4<bool>(!var_0, any(!vec2<bool>(arg_1, arg_2.a.x)), select(1i, global0.x, global2[_wgslsmith_index_u32(1u, 3u)]) < (arg_0.x >> (19437u % 32u)), !all(vec2<bool>(arg_2.c.d.a, var_0))));
    let var_2 = arg_2.c.c;
    return arg_2.c.d;
}

fn func_1(arg_0: f32) -> vec2<u32> {
    global3 = select(true, true, global2[_wgslsmith_index_u32(4294967295u, 3u)]);
    var var_0 = Struct_2(func_4(vec3<i32>(_wgslsmith_div_i32(34611i, u_input.d), global0.x, 16220i), global2[_wgslsmith_index_u32(1u, 3u)], Struct_4(select(func_2(vec2<f32>(arg_0, 184f)), !vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 3u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(14149u, 3u)], global2[_wgslsmith_index_u32(0u, 3u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 3u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(19536u, 3u)], global2[_wgslsmith_index_u32(25199u, 3u)], global2[_wgslsmith_index_u32(458u, 3u)]))), ~(~21833u), Struct_3(~vec2<u32>(4294967295u, 1u), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 3u)], true), vec2<bool>(global2[_wgslsmith_index_u32(20411u, 3u)], global2[_wgslsmith_index_u32(14361u, 3u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)])), Struct_2(Struct_1(global2[_wgslsmith_index_u32(1u, 3u)], 63724i, arg_0), vec2<u32>(0u, 42342u), vec4<f32>(-1285f, 628f, 613f, arg_0), Struct_1(global2[_wgslsmith_index_u32(1215u, 3u)], global0.x, arg_0)), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 3u)], global0.x, 722f))), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, 0i) >> (abs(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), countOneBits(vec2<i32>(15692i, -59680i)) & _wgslsmith_clamp_vec2_i32(global0.xy, vec2<i32>(1i, 8324i), vec2<i32>(-2147483647i, 1i)))), func_3(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(abs(vec3<u32>(20107u, 3253u, 4294967295u)))), Struct_2(Struct_1(true, _wgslsmith_mod_i32(global0.x, u_input.c.x), _wgslsmith_f_op_f32(-arg_0)), vec2<u32>(1u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1477f, -861f, 1766f))), Struct_1(global2[_wgslsmith_index_u32(firstLeadingBit(1u), 3u)], 0i, 948f)), Struct_4(!func_2(vec2<f32>(arg_0, arg_0)), 29326u, Struct_3(countOneBits(vec2<u32>(42378u, 0u)), vec2<bool>(false, global2[_wgslsmith_index_u32(32667u, 3u)]), Struct_2(Struct_1(global2[_wgslsmith_index_u32(27241u, 3u)], global0.x, arg_0), vec2<u32>(26783u, 34901u), vec4<f32>(arg_0, -1086f, arg_0, arg_0), Struct_1(true, 29262i, -1026f)), func_4(global0.zxy, false, Struct_4(vec3<bool>(false, global2[_wgslsmith_index_u32(29542u, 3u)], global2[_wgslsmith_index_u32(41899u, 3u)]), 35112u, Struct_3(vec2<u32>(0u, 0u), vec2<bool>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(4526u, 3u)]), Struct_2(Struct_1(false, global0.x, arg_0), vec2<u32>(15165u, 39029u), vec4<f32>(arg_0, arg_0, arg_0, 1000f), Struct_1(global2[_wgslsmith_index_u32(24965u, 3u)], 2147483647i, 2911f)), Struct_1(true, 14082i, arg_0))), u_input.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1f, 342f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -224f, arg_0, 600f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, -230f, 407f, -691f), vec4<f32>(arg_0, 249f, arg_0, 1274f))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(126509u, 4294967295u, 9119u, 0u), vec4<u32>(0u, 1u, 4294967295u, 81244u)), 3u)]))))), func_4(global0.xwz, select(global2[_wgslsmith_index_u32(~1u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)] || any(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 3u)], false, false, global2[_wgslsmith_index_u32(4294967295u, 3u)])), all(vec2<bool>(global2[_wgslsmith_index_u32(37059u, 3u)], true))), Struct_4(!select(vec3<bool>(true, false, false), vec3<bool>(global2[_wgslsmith_index_u32(26101u, 3u)], true, global2[_wgslsmith_index_u32(30051u, 3u)]), false), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(68637u, 4294967295u, 4294967295u, 931u), vec4<u32>(28679u, 100767u, 1u, 1u))), Struct_3(vec2<u32>(1u, 1u), vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 3u)]), Struct_2(Struct_1(global2[_wgslsmith_index_u32(45280u, 3u)], u_input.a.x, arg_0), vec2<u32>(0u, 45160u), vec4<f32>(arg_0, arg_0, -604f, arg_0), Struct_1(true, global0.x, 115f)), Struct_1(true, -2147483647i, 736f))), abs(5534i)));
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c));
    var_1 = var_0.d.b << (0u % 32u);
    return countOneBits(abs(firstTrailingBit(reverseBits(vec2<u32>(var_0.b.x, 10698u)) | _wgslsmith_sub_vec2_u32(var_0.b, vec2<u32>(1u, var_0.b.x)))));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = !vec2<bool>(any(select(!vec3<bool>(arg_0, false, arg_0), !vec3<bool>(global2[_wgslsmith_index_u32(24118u, 3u)], arg_0, true), global2[_wgslsmith_index_u32(4294967295u, 3u)])), all(vec4<bool>(true, true, true, true)));
    global3 = !select(false, all(select(select(vec4<bool>(arg_0, arg_0, global2[_wgslsmith_index_u32(27433u, 3u)], false), vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(arg_2, 3u)], global2[_wgslsmith_index_u32(arg_1, 3u)], true), vec4<bool>(false, arg_0, var_0.x, var_0.x)), !vec4<bool>(false, var_0.x, var_0.x, true), any(vec4<bool>(global2[_wgslsmith_index_u32(1u, 3u)], arg_0, var_0.x, var_0.x)))), false);
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1725f - 463f), _wgslsmith_f_op_f32(-1140f * 1463f))))).xy;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1449f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(189f, -964f))))))));
    global2 = array<bool, 3>();
    return _wgslsmith_f_op_f32(var_2 + var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = false;
    var var_0 = _wgslsmith_f_op_f32(func_5(true, min(~(~(~1u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 45064u) << (_wgslsmith_mod_u32(0u, 59516u) % 32u), ~_wgslsmith_clamp_u32(19523u, 4294967295u, 1u))), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(6916u, 12926u)) << (select(vec2<u32>(0u, 0u), func_1(1506f), !vec2<bool>(false, global2[_wgslsmith_index_u32(85468u, 3u)])) % vec2<u32>(32u)), min(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 0u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 76703u), vec2<u32>(0u, 13618u))))));
    let var_1 = countOneBits(~((_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, 1i, -2147483647i), vec3<i32>(u_input.a.x, 1i, global0.x)) ^ ~vec3<i32>(30171i, 0i, u_input.a.x)) << (firstLeadingBit(~vec3<u32>(36611u, 11644u, 4294967295u)) % vec3<u32>(32u))));
    var var_2 = -6330i;
    global0 = select(_wgslsmith_sub_vec4_i32(vec4<i32>(min(-49004i, ~12889i), _wgslsmith_sub_i32(_wgslsmith_div_i32(global0.x, u_input.a.x), global0.x), -2147483647i, 11486i), abs(select(-u_input.a, vec4<i32>(1i, -1i, u_input.c.x, -2147483647i), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(19401u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)])))), vec4<i32>(2147483647i, 1i & (_wgslsmith_mod_i32(global0.x, global0.x) >> (select(4294967295u, 73235u, false) % 32u)), _wgslsmith_clamp_i32(reverseBits(1i), firstTrailingBit(u_input.d), ~u_input.c.x) >> (1u % 32u), -2147483647i), func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-270f, 1092f)), vec2<f32>(1f, 1f), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~0u), 3u)]))).x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(217f)), -1000f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(783f, -1000f)))))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(reverseBits(~42914u), ~(~1u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 67517u, 29293u), vec4<u32>(10598u, 1u, 55930u, 12936u)), 63239u, abs(1u)) | 1u), -(countOneBits(global0.zx) & firstTrailingBit(vec2<i32>(-1i, -2147483647i))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-19960i, global0.x, -5011i, 2147483647i), abs(vec4<i32>(27997i, -2147483647i, 1i, -1i))) | max(global0.x << (1u % 32u), u_input.d), u_input.d, func_4(abs(_wgslsmith_clamp_vec3_i32(u_input.a.zyx, vec3<i32>(global0.x, 23411i, u_input.d), global0.wyz)), true, Struct_4(select(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 3u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(15323u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)]), global2[_wgslsmith_index_u32(25456u, 3u)]), abs(0u), Struct_3(vec2<u32>(1u, 0u), vec2<bool>(false, true), Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 3u)], var_1.x, 410f), vec2<u32>(12305u, 18529u), vec4<f32>(-602f, -315f, 1375f, -225f), Struct_1(true, -25704i, 1000f)), Struct_1(global2[_wgslsmith_index_u32(10418u, 3u)], 28690i, 1000f))), func_4(var_1 & global0.xwy, any(vec3<bool>(global2[_wgslsmith_index_u32(106719u, 3u)], global2[_wgslsmith_index_u32(42457u, 3u)], global2[_wgslsmith_index_u32(83398u, 3u)])), Struct_4(vec3<bool>(false, global2[_wgslsmith_index_u32(93846u, 3u)], false), 1u, Struct_3(vec2<u32>(0u, 18292u), vec2<bool>(false, true), Struct_2(Struct_1(false, -2147483647i, 503f), vec2<u32>(4294967295u, 26756u), vec4<f32>(-465f, -566f, -664f, -1000f), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 3u)], 23655i, -1038f)), Struct_1(global2[_wgslsmith_index_u32(48758u, 3u)], global0.x, 308f))), -2147483647i).b).b));
}

