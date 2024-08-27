struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(46325i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<bool>(true, true), vec4<i32>(-1833i, 2147483647i, 4688i, -38525i));

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 1u, 0u, 1u);

var<private> global3: Struct_2 = Struct_2(vec2<i32>(0i, -1i), vec2<i32>(35109i, -25786i), vec2<bool>(true, false), vec4<i32>(2147483647i, -38044i, -40186i, 0i));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = min(global2.x, (global2.x & global2.x) << (countOneBits(0u) % 32u));
    global0 = any(select(!vec3<bool>(false | global3.c.x, true, true), vec3<bool>(all(select(vec4<bool>(false, false, global1.c.x, true), vec4<bool>(true, false, global1.c.x, global3.c.x), true)), global3.c.x, global1.c.x), !(global1.d.x >= global1.a.x) != any(vec2<bool>(global3.c.x, false))));
    var var_1 = Struct_2(max(global3.d.xy, arg_1.zy), arg_1.yy, !global3.c, arg_1);
    var var_2 = true;
    global0 = var_0 <= ~global2.x;
    return Struct_1(~(~global3.d), vec3<bool>(global3.b.x >= 2147483647i, select(true, true, !any(vec4<bool>(global3.c.x, true, global3.c.x, false))), var_1.c.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_div_f32(arg_0.x, 1218f), _wgslsmith_f_op_f32(f32(-1f) * -122f)))));
}

fn func_3(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-685f * _wgslsmith_f_op_f32(-arg_0.c.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(ceil(arg_0.c.x))));
    var_0 = _wgslsmith_f_op_f32(arg_0.c.x + 412f);
    var var_1 = Struct_3(true, global2.wzz, Struct_2(arg_0.a.wz, -firstLeadingBit(vec2<i32>(9964i, arg_0.a.x)), vec2<bool>(arg_0.b.x, global1.c.x), _wgslsmith_div_vec4_i32(global3.d, firstTrailingBit(vec4<i32>(arg_0.a.x, 2147483647i, arg_0.a.x, 2559i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c.yx * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_0.c.zx * arg_0.c.xx))))));
    global2 = ~(vec4<u32>(~(~var_1.b.x), ~30644u, global2.x, _wgslsmith_mult_u32(global2.x, ~29865u)) | vec4<u32>(_wgslsmith_div_u32(global2.x, max(19645u, 8224u)), abs(_wgslsmith_mod_u32(1u, var_1.b.x)), ~(~4891u), 49916u | (4294967295u ^ var_1.b.x)));
    return Struct_2(~global1.a, _wgslsmith_mod_vec2_i32(min(arg_0.a.wz, reverseBits(global3.a)), vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.c.d.yy & arg_0.a.xz, -vec2<i32>(global3.a.x, u_input.a)), -global1.a.x)), !vec2<bool>(global3.c.x, arg_0.b.x), firstLeadingBit(~vec4<i32>(~global3.a.x, arg_0.a.x, 1i, reverseBits(global1.b.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = func_3(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-116f, -338f, -2061f) + vec3<f32>(1547f, 307f, -1664f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(626f, -149f, 569f)))), global3.d));
    global1 = Struct_2(global3.d.yz, firstLeadingBit(-(global1.d.ww ^ arg_1.b)) & var_0.d.wx, !global1.c, func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(610f, -1320f, -2007f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-936f, 1452f, -2804f) * vec3<f32>(840f, 432f, -1000f)))), arg_1.d).a >> (~(vec4<u32>(0u, global2.x, 47131u, 12093u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 34483u, global2.x, global2.x), vec4<u32>(global2.x, 0u, global2.x, 7370u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = select(abs(~(~(vec4<u32>(global2.x, global2.x, global2.x, 39971u) >> (vec4<u32>(0u, global2.x, global2.x, global2.x) % vec4<u32>(32u))))), vec4<u32>(1u, 0u, global2.x, _wgslsmith_div_u32(global2.x, firstTrailingBit(global2.x))) ^ (vec4<u32>(4294967295u, max(60470u, global2.x), 1u, 1u) << (vec4<u32>(firstTrailingBit(0u), ~global2.x, countOneBits(global2.x), ~global2.x) % vec4<u32>(32u))), true);
    let var_2 = vec3<bool>(all(select(vec4<bool>(true || var_0.c.x, global3.c.x, var_0.c.x, global3.c.x), !vec4<bool>(arg_0.x, var_0.c.x, var_0.c.x, true), arg_1.c.x)), true, ~(~14673u) >= ~firstLeadingBit(~var_1.x));
    let var_3 = _wgslsmith_f_op_f32(ceil(-1000f));
    return ~select(global2.x, _wgslsmith_mod_u32(global2.x, 2281u), var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec4<u32>(max(select(max(20975u, global2.x), 0u, global1.c.x && global1.c.x), abs(global2.x)), 1u, func_1(select(vec2<bool>(global1.c.x, false), !vec2<bool>(global3.c.x, true), !global1.c), Struct_2(vec2<i32>(global1.a.x, global3.d.x) >> (global2.zy % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.a) & global3.a, vec2<bool>(false, true), vec4<i32>(global1.a.x, -2147483647i, global3.a.x, 26223i) >> (vec4<u32>(6779u, 1u, 568u, global2.x) % vec4<u32>(32u)))), _wgslsmith_mult_u32(global2.x, ~(~global2.x)));
    global1 = Struct_2(vec2<i32>(func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-861f, 377f, 295f))), global1.d).a.x, _wgslsmith_clamp_i32(-29116i, -global1.b.x, global1.b.x)), abs(~_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global1.d.x), global3.a), ~global1.a)), vec2<bool>(any(select(vec4<bool>(global1.c.x, global3.c.x, global3.c.x, global3.c.x), select(vec4<bool>(global1.c.x, true, global1.c.x, global3.c.x), vec4<bool>(true, true, false, false), global1.c.x), vec4<bool>(false, global1.c.x, false, true))), global3.c.x), vec4<i32>(countOneBits(select(u_input.a, -2147483647i, true)), 14785i, _wgslsmith_sub_i32(4218i << (~global2.x % 32u), i32(-1i) * -1i), -u_input.a));
    var var_0 = Struct_2(global1.a, -func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1612f, -407f, 488f) - vec3<f32>(627f, 1863f, 1625f)))), ~vec4<i32>(1i, -1i, -8875i, 0i)).a.xx, !select(global3.c, vec2<bool>(true, true), false), ~vec4<i32>(min(-2147483647i, 1i), 48713i, 1i, 1i));
    let var_1 = global3.b.x;
    var var_2 = ~(~(~global2.x));
    global2 = firstTrailingBit(select(~vec4<u32>(1u, 0u, 41367u, global2.x), ~vec4<u32>(global2.x, global2.x ^ 4294967295u, ~14325u, abs(1u)), !select(vec4<bool>(true, global1.c.x, true, true), !vec4<bool>(var_0.c.x, true, true, false), true)));
    var var_3 = global2.xzw;
    let var_4 = Struct_3((true == var_0.c.x) | var_0.c.x, ~(~global2.wzy), func_3(Struct_1(_wgslsmith_mod_vec4_i32(~global1.d, countOneBits(vec4<i32>(var_0.a.x, 1i, 0i, -2147483647i))), vec3<bool>(select(false, true, global1.c.x), !global3.c.x, !global1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-168f, 1559f, -1196f) - vec3<f32>(-636f, -761f, 786f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(212f, _wgslsmith_f_op_f32(-2671f + -196f)))));
    var_0 = func_3(Struct_1(var_0.d, !(!vec3<bool>(global1.c.x, true, global3.c.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.d.x, 1000f, var_4.d.x) * vec3<f32>(var_4.d.x, var_4.d.x, -1243f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1264f, var_4.d.x, 232f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-688f))), 547f, _wgslsmith_f_op_f32(step(var_4.d.x, 976f))), var_3.x);
}

