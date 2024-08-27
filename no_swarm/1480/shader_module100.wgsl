struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 32245i;

var<private> global1: Struct_5 = Struct_5(Struct_1(true, vec2<i32>(5037i, -9895i), vec2<bool>(false, true), vec4<f32>(1590f, -101f, -382f, -798f), 7133u));

var<private> global2: Struct_3;

var<private> global3: array<Struct_4, 2>;

var<private> global4: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(30112u, 0u), vec2<u32>(15712u, 18134u), vec2<u32>(14180u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(25782u, 0u), vec2<u32>(13490u, 33698u), vec2<u32>(18520u, 33630u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = global2.a.b.d.wzx;
    var var_1 = Struct_1(!(arg_2.a | any(!vec4<bool>(true, global1.a.a, false, global2.d.d.c.x))), ~u_input.b.xx << (arg_1.c.zw % vec2<u32>(32u)), select(!(!vec2<bool>(true, arg_2.a)), select(global1.a.c, select(select(arg_1.a.b.c, vec2<bool>(arg_1.d.c.a, false), global1.a.c), select(vec2<bool>(global1.a.c.x, arg_2.a), arg_1.a.b.c, arg_2.a), true), global2.d.c.c.x), arg_2.a), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_1.d.d.d, vec4<f32>(688f, -1968f, arg_1.d.c.d.x, -394f), !arg_1.a.c.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1024f, 1000f, global2.a.d.d.x, 1000f))), global2.a.c.d), ~0u);
    var var_2 = u_input.a;
    var var_3 = ~firstLeadingBit(_wgslsmith_mod_vec3_u32(global2.c.wwy, vec3<u32>(u_input.c, arg_1.c.x, 31202u)) | ~(~vec3<u32>(53320u, var_1.e, 34684u)));
    global2 = arg_1;
    return vec3<bool>(~(~_wgslsmith_clamp_u32(arg_1.d.d.e, var_1.e, arg_1.c.x)) >= ~u_input.c, false, all(vec3<bool>(false, true, !(arg_1.a.d.a | false))));
}

fn func_4(arg_0: bool) -> vec4<f32> {
    var var_0 = global2.d.c.e;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * -638f), 1426f, -313f, _wgslsmith_f_op_f32(f32(-1f) * -427f));
    global2 = Struct_3(Struct_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global2.c.xyx, global2.c.wwz), _wgslsmith_clamp_u32(global1.a.e >> (global2.c.x % 32u), 1u, u_input.c)), global1.a, Struct_1(true, vec2<i32>(~1i, global2.a.b.b.x), global2.d.c.c, vec4<f32>(-2404f, _wgslsmith_f_op_f32(floor(332f)), _wgslsmith_f_op_f32(112f * var_1.x), 692f), ~173u), Struct_1(false, firstTrailingBit(vec2<i32>(-1i, global2.d.c.b.x)) & firstLeadingBit(vec2<i32>(global1.a.b.x, 24863i)), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1168f, 484f) - vec2<f32>(global1.a.d.x, global1.a.d.x)), Struct_3(global2.d, global1.a.d.x, global2.c, global2.a), Struct_4(true)).xx, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-550f, 890f, global1.a.d.x, global1.a.d.x)), _wgslsmith_f_op_vec4_f32(round(var_1)))), ~max(u_input.c, global2.d.c.e))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(368f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1026f), _wgslsmith_f_op_f32(sign(global1.a.d.x))))), countOneBits(vec4<u32>(_wgslsmith_clamp_u32(global2.a.d.e, global1.a.e, global2.d.a), _wgslsmith_div_u32(1u, global1.a.e), 109665u, global2.c.x)) & ~(~_wgslsmith_div_vec4_u32(global2.c, vec4<u32>(u_input.c, 27346u, 7645u, 0u))), Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, 1u, global2.c.x)), select(global2.c.ywy, vec3<u32>(u_input.c, global1.a.e, 4294967295u), false)), _wgslsmith_sub_vec3_u32(global2.c.xyy, _wgslsmith_sub_vec3_u32(vec3<u32>(124453u, u_input.c, 1445u), global2.c.xzy))), Struct_1(global1.a.a, u_input.b.yy, global1.a.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global2.d.c.d + global1.a.d), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, 511f, global2.d.d.d.x, global1.a.d.x))), vec4<bool>(false, arg_0, true, true))), 4294967295u), global2.d.c, Struct_1(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1585f, -1966f) * vec2<f32>(global2.a.b.d.x, -969f)), Struct_3(global2.a, var_1.x, vec4<u32>(global2.c.x, 2880u, 71509u, 46540u), global2.a), Struct_4(true)).x, select(vec2<i32>(-1i, global1.a.b.x) << (global4[_wgslsmith_index_u32(0u, 8u)] % vec2<u32>(32u)), select(vec2<i32>(global2.d.b.b.x, -1i), vec2<i32>(1i, global1.a.b.x), false), !global1.a.a), global2.d.d.c, vec4<f32>(_wgslsmith_f_op_f32(step(global1.a.d.x, var_1.x)), _wgslsmith_f_op_f32(-565f * 1489f), 904f, _wgslsmith_f_op_f32(abs(var_1.x))), ~1u)));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u << (1u % 32u), _wgslsmith_sub_u32(global1.a.e, ~(~global1.a.e))), 2u)];
    let var_3 = global3[_wgslsmith_index_u32(global1.a.e, 2u)];
    return var_1;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_5, arg_3: vec4<u32>) -> Struct_1 {
    global2 = Struct_3(arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.d.x), _wgslsmith_f_op_f32(ceil(arg_0)))))), _wgslsmith_mult_vec4_u32(global2.c, global2.c) << (global2.c % vec4<u32>(32u)), arg_1);
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(true || all(func_3(vec2<f32>(1822f, -287f), Struct_3(Struct_2(19867u, arg_1.d, Struct_1(global1.a.c.x, vec2<i32>(global2.d.c.b.x, -1i), vec2<bool>(global2.d.d.a, false), arg_2.a.d, 0u), Struct_1(true, vec2<i32>(global1.a.b.x, arg_2.a.b.x), global1.a.c, vec4<f32>(-385f, -1000f, arg_2.a.d.x, arg_2.a.d.x), u_input.c)), global1.a.d.x, vec4<u32>(arg_1.d.e, global1.a.e, 0u, 40460u), Struct_2(arg_3.x, global1.a, Struct_1(true, arg_1.c.b, arg_1.b.c, vec4<f32>(global2.a.d.d.x, arg_0, arg_2.a.d.x, arg_2.a.d.x), arg_1.a), Struct_1(false, global2.a.d.b, vec2<bool>(true, false), global1.a.d, 1u))), global3[_wgslsmith_index_u32(4294967295u, 2u)]))));
    let var_2 = func_3(global1.a.d.yx, Struct_3(arg_1, 1086f, _wgslsmith_clamp_vec4_u32(firstTrailingBit(global2.c), arg_3, vec4<u32>(70576u, 6297u, 1u, arg_2.a.e) ^ vec4<u32>(14491u, global2.d.c.e, u_input.c, 97023u)), Struct_2(1u | global2.d.b.e, Struct_1(true, arg_1.b.b, global1.a.c, arg_2.a.d, 4294967295u), global2.a.b, Struct_1(false, u_input.b.yy, vec2<bool>(arg_2.a.c.x, false), global1.a.d, u_input.c))), global3[_wgslsmith_index_u32(0u, 2u)]).x & !(select(abs(40504u), arg_1.c.e, !arg_2.a.c.x) > 0u);
    var var_3 = Struct_3(global2.a, 487f, _wgslsmith_mod_vec4_u32(~arg_3, ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_1.c.e, arg_3.x, 0u), abs(vec4<u32>(global2.a.c.e, global1.a.e, arg_2.a.e, u_input.c)))), arg_1);
    return global2.a.d;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = Struct_3(Struct_2(arg_2.x, func_2(1000f, global2.a, Struct_5(Struct_1(false, global1.a.b, arg_1.xz, global1.a.d, 4294967295u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(44451u, global2.a.a, 4612u, global1.a.e), vec4<u32>(global2.d.b.e, u_input.c, global1.a.e, 4294967295u))), global2.d.c, Struct_1(any(!vec4<bool>(arg_1.x, true, arg_0.a, global2.d.d.a)), min(vec2<i32>(55767i, -41897i), global1.a.b) << (max(vec2<u32>(3353u, u_input.c), vec2<u32>(u_input.c, 38433u)) % vec2<u32>(32u)), !global1.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1289f, -1353f, -2120f, global1.a.d.x), vec4<f32>(global2.a.d.d.x, 1356f, -110f, -553f), vec4<bool>(global2.a.c.a, true, false, global1.a.a)))), 3559u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.a.d.x)) * -1801f), arg_2, Struct_2(_wgslsmith_mod_u32(1u, 7682u), Struct_1(false, func_2(_wgslsmith_f_op_f32(round(-124f)), Struct_2(u_input.c, global2.d.c, global2.a.b, Struct_1(arg_1.x, vec2<i32>(29791i, 2147483647i), vec2<bool>(arg_0.a, arg_0.a), vec4<f32>(global2.b, global2.d.c.d.x, global2.d.d.d.x, -1000f), 1u)), Struct_5(global2.d.b), ~vec4<u32>(u_input.c, arg_2.x, 2753u, global1.a.e)).b, !vec2<bool>(global1.a.c.x, false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(586f, global2.a.d.d.x, global2.b, 287f)) - vec4<f32>(global2.a.b.d.x, 669f, -857f, global2.d.b.d.x)), max(0u, arg_2.x)), func_2(global1.a.d.x, Struct_2(~global2.d.b.e, Struct_1(arg_1.x, u_input.a.xy, global1.a.c, vec4<f32>(global1.a.d.x, -404f, 666f, global2.d.c.d.x), 1u), global2.d.b, Struct_1(false, vec2<i32>(-29883i, -12377i), global2.a.d.c, vec4<f32>(941f, global1.a.d.x, global1.a.d.x, -162f), 1u)), Struct_5(func_2(global2.d.d.d.x, Struct_2(2498u, Struct_1(arg_1.x, global2.d.b.b, arg_1.xz, global2.d.b.d, global1.a.e), Struct_1(arg_1.x, vec2<i32>(u_input.a.x, u_input.a.x), global2.a.d.c, global2.d.c.d, 12478u), Struct_1(arg_1.x, vec2<i32>(global1.a.b.x, -24900i), vec2<bool>(true, false), vec4<f32>(-655f, -996f, global2.b, -931f), 24652u)), Struct_5(global1.a), arg_2)), _wgslsmith_mult_vec4_u32(global2.c, arg_2) ^ global2.c), func_2(global1.a.d.x, global2.a, Struct_5(Struct_1(arg_0.a, vec2<i32>(u_input.b.x, 18191i), vec2<bool>(global2.a.d.a, global2.d.c.a), vec4<f32>(global1.a.d.x, 348f, -501f, -121f), global1.a.e)), vec4<u32>(u_input.c, 1u, arg_2.x, global2.a.b.e))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_mod_u32(arg_2.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.c.zz, vec2<u32>(0u, global2.c.x), global4[_wgslsmith_index_u32(u_input.c, 8u)]), global2.c.xw ^ global2.c.wx)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(183f - -419f), -1000f), Struct_2(~var_0.c.x, var_0.a.d, global2.a.b, Struct_1(true, vec2<i32>(36089i, -58280i), vec2<bool>(true, false), vec4<f32>(global2.a.b.d.x, 893f, var_0.a.c.d.x, -293f), 4294967295u)), Struct_5(func_2(1000f, Struct_2(u_input.c, global2.d.d, Struct_1(true, global2.d.b.b, vec2<bool>(arg_1.x, global2.a.c.c.x), global2.d.c.d, 10398u), global2.d.d), Struct_5(global2.a.c), vec4<u32>(33464u, 1u, 0u, u_input.c))), vec4<u32>(firstTrailingBit(9988u), ~81169u, _wgslsmith_dot_vec3_u32(vec3<u32>(63792u, arg_2.x, 4294967295u), global2.c.wyx), u_input.c)), global1.a, global2.d.d), _wgslsmith_f_op_f32(1696f + 423f), firstLeadingBit(~(~global2.c)), global2.d);
    return Struct_4(true);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -329f), -385f)), _wgslsmith_f_op_f32(1339f * _wgslsmith_div_f32(arg_1.x, global2.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d.d.d.x, global1.a.d.x) * _wgslsmith_f_op_f32(global2.a.c.d.x * global1.a.d.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), -589f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(273f + global1.a.d.x))), _wgslsmith_f_op_f32(trunc(global1.a.d.x)))));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(26577i, select(arg_2, firstLeadingBit(2147483647i) | -arg_2, !(arg_0.a & global1.a.c.x))), u_input.d);
    var var_2 = global1.a.c.x;
    global4 = array<vec2<u32>, 8>();
    let var_3 = Struct_5(Struct_1(global2.d.c.c.x, vec2<i32>(_wgslsmith_sub_i32(select(u_input.d, arg_2, arg_0.a), 4976i & global1.a.b.x), var_1), vec2<bool>(!(1064f >= global1.a.d.x), arg_0.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global2.a.d.d - global2.a.b.d), _wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(var_0.x, global1.a.d.x, -568f, 1908f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global1.a.d.x, 455f, global2.a.b.d.x)) * _wgslsmith_f_op_vec4_f32(global2.a.d.d - global1.a.d)), select(vec4<bool>(global2.a.d.a, arg_0.a, global1.a.a, true), !vec4<bool>(false, global1.a.a, false, arg_0.a), all(global2.a.d.c)))), _wgslsmith_sub_u32(countOneBits(reverseBits(u_input.c)), _wgslsmith_div_u32(countOneBits(2775u), ~arg_3.x))));
    return global2.d.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f + 981f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-275f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.d.x, _wgslsmith_f_op_f32(global1.a.d.x - global2.b))), -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -352f), var_0.x, global2.a.d.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.d.x, global2.d.d.d.x, global1.a.d.x))) + vec3<f32>(-1544f, -1023f, global2.a.c.d.x))));
    let var_2 = Struct_3(Struct_2(u_input.c & u_input.c, global1.a, func_5(func_1(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global2.a.c.e), 2u)], vec3<bool>(true, true, true), abs(vec4<u32>(1u, global1.a.e, 0u, 38533u))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), global2.d.d.d.x, _wgslsmith_f_op_f32(select(global1.a.d.x, global1.a.d.x, global1.a.c.x)), global1.a.d.x), reverseBits(-2147483647i), ~firstTrailingBit(global2.c.zxz)), Struct_1(false, min(min(global2.d.b.b, u_input.b.yy), select(global1.a.b, vec2<i32>(1i, u_input.a.x), global2.a.d.c.x)), func_5(func_1(global3[_wgslsmith_index_u32(4001u, 2u)], vec3<bool>(true, global2.a.b.c.x, global2.a.b.c.x), vec4<u32>(4294967295u, 15148u, global2.a.a, u_input.c)), vec4<f32>(278f, var_1.x, -355f, global2.d.d.d.x), 2129i, firstLeadingBit(global2.c.yxw)).c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1386f, 1111f, -201f, global1.a.d.x))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, global1.a.d.x, 851f, -378f)))), global1.a.e)), _wgslsmith_f_op_f32(-var_1.x), ~firstLeadingBit(global2.c << (vec4<u32>(41032u, 4294967295u, u_input.c, u_input.c) % vec4<u32>(32u))), Struct_2(_wgslsmith_mod_u32(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, global1.a.e, 4294967295u, 0u), vec4<u32>(global2.d.c.e, 34260u, 20757u, 24369u))), global2.d.c, global1.a, Struct_1(global1.a.a, countOneBits(reverseBits(vec2<i32>(2147483647i, global2.a.c.b.x))), vec2<bool>(global1.a.a, any(vec4<bool>(false, global1.a.c.x, false, global1.a.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-1073f + global2.d.b.d.x), -899f, _wgslsmith_f_op_f32(global2.d.b.d.x + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -103f)), (51802u ^ u_input.c) >> (1u % 32u))));
    var var_3 = Struct_4(false);
    global3 = array<Struct_4, 2>();
    var var_4 = Struct_3(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1257f + -1361f))), _wgslsmith_mod_vec4_u32(~abs(~var_2.c), abs(~var_2.c) << (~global2.c % vec4<u32>(32u))), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.c.b);
}

