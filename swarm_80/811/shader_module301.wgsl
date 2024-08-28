struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, true), vec4<i32>(-60180i, 1i, -34344i, -1i));

var<private> global2: array<i32, 28> = array<i32, 28>(2147483647i, -15134i, -10025i, 62880i, -9541i, 1i, 39507i, 22055i, -27885i, -5897i, i32(-2147483648), -11893i, 22008i, -1i, 1i, 2496i, 2147483647i, 1i, 42395i, 0i, 2147483647i, -45554i, 0i, 0i, 39717i, 45932i, -23259i, 22505i);

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global3 = arg_1;
    global2 = array<i32, 28>();
    global2 = array<i32, 28>();
    var var_0 = -arg_2.b.xxx;
    var var_1 = arg_3.b;
    return arg_1.a.yy;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = 2147483647i;
    var var_1 = arg_0;
    var var_2 = Struct_1(vec3<bool>(any(vec2<bool>(!global3.a.x, all(vec4<bool>(true, arg_0.a.x, true, true)))), all(select(arg_0.a, global3.a, vec3<bool>(false, false, false))), _wgslsmith_sub_i32(0i, abs(u_input.c)) != firstTrailingBit(~global3.b.x)), firstTrailingBit(~countOneBits(firstLeadingBit(vec4<i32>(1i, -2147483647i, 0i, -21847i)))));
    var var_3 = ~(i32(-1i) * -1272i);
    var_2 = arg_1;
    return select(select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(global1.a.x, false, true, false), global3.a.x), !vec4<bool>(true, true, global1.a.x, var_2.a.x), false), vec4<bool>(true, false, var_1.a.x, global3.a.x & true), select(!vec4<bool>(global1.a.x, global1.a.x, global3.a.x, true), vec4<bool>(false, global3.a.x, true, false), !arg_1.a.x)), !vec4<bool>(all(arg_0.a.zx), any(vec4<bool>(false, arg_1.a.x, true, arg_1.a.x)), !arg_1.a.x, true), select(!(!vec4<bool>(arg_0.a.x, false, false, arg_0.a.x)), vec4<bool>(true, true | arg_0.a.x, !arg_1.a.x, true), select(vec4<bool>(global1.a.x, arg_1.a.x, false, true), !vec4<bool>(global3.a.x, false, arg_1.a.x, false), select(vec4<bool>(global3.a.x, false, true, arg_0.a.x), vec4<bool>(var_2.a.x, false, arg_0.a.x, true), global1.a.x)))), !(!vec4<bool>(true & global3.a.x, arg_0.a.x, any(vec3<bool>(arg_0.a.x, arg_1.a.x, arg_1.a.x)), var_1.a.x)), select(select(vec4<bool>(true, all(vec4<bool>(global1.a.x, var_2.a.x, global1.a.x, true)), all(var_2.a), any(arg_1.a)), vec4<bool>(true, true, true, true), global3.a.x | true), vec4<bool>(select(true, global3.a.x, arg_1.a.x) | !arg_1.a.x, true, !var_1.a.x, arg_1.a.x), select(vec4<bool>(arg_0.a.x, false, true, global3.a.x), !select(vec4<bool>(arg_1.a.x, false, false, global1.a.x), vec4<bool>(false, false, arg_0.a.x, true), vec4<bool>(false, var_1.a.x, arg_0.a.x, false)), global1.a.x)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_i32(arg_0.b.zz ^ ~(~arg_0.b.ww), (-abs(arg_0.b.xz) << (_wgslsmith_add_vec2_u32(~vec2<u32>(arg_1, 87238u), u_input.b.zx) % vec2<u32>(32u))) << (u_input.b.zw % vec2<u32>(32u)));
    let var_1 = 1027f;
    let var_2 = vec2<i32>(-min(u_input.c, global1.b.x ^ global1.b.x), -52443i) << (firstTrailingBit(select(vec2<u32>(50914u, u_input.b.x), ~vec2<u32>(7848u, arg_1), func_2(vec4<bool>(true, global3.a.x, true, false), Struct_1(global1.a, u_input.d), Struct_1(arg_0.a, arg_0.b), Struct_1(vec3<bool>(false, true, global3.a.x), u_input.d))) << (~(u_input.a.xy << (u_input.b.xx % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    global2 = array<i32, 28>();
    var var_3 = !func_3(Struct_1(arg_0.a, _wgslsmith_mult_vec4_i32(min(vec4<i32>(var_2.x, -67197i, u_input.d.x, var_2.x), vec4<i32>(var_0, global2[_wgslsmith_index_u32(arg_1, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)], global1.b.x)), vec4<i32>(global3.b.x, -53059i, u_input.c, global1.b.x))), Struct_1(!(!vec3<bool>(false, global3.a.x, global1.a.x)), max(arg_0.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(16850i, arg_0.b.x, 0i, 7209i), u_input.d, vec4<i32>(var_2.x, u_input.d.x, global2[_wgslsmith_index_u32(arg_1, 28u)], global2[_wgslsmith_index_u32(8763u, 28u)])))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(Struct_1(!global3.a, _wgslsmith_sub_vec4_i32(u_input.d, ~(-vec4<i32>(global3.b.x, 71709i, global1.b.x, -1i)))), u_input.e, vec3<f32>(_wgslsmith_f_op_f32(2169f * _wgslsmith_f_op_f32(516f - _wgslsmith_f_op_f32(-1750f - -605f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f) + _wgslsmith_f_op_f32(ceil(-551f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-632f + -363f)) + _wgslsmith_f_op_f32(sign(353f)))));
    var var_0 = func_1(Struct_1(func_3(func_1(Struct_1(global1.a, global3.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.e, 4294967295u), vec3<u32>(u_input.e, 7397u, 45813u)), global0[_wgslsmith_index_u32(u_input.e, 16u)]), func_1(Struct_1(vec3<bool>(global1.a.x, global1.a.x, global3.a.x), vec4<i32>(-42055i, 1i, u_input.d.x, global2[_wgslsmith_index_u32(u_input.a.x, 28u)])), abs(28570u), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.e, 16u)]))).wxz, global1.b >> (vec4<u32>(128847u, u_input.a.x, 4294967295u, u_input.b.x << (4294967295u % 32u)) % vec4<u32>(32u))), _wgslsmith_mult_u32(4294967295u, ~min(u_input.b.x, u_input.a.x) | ~15737u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1000f, -1000f))), vec3<f32>(-597f, -1378f, 446f))))));
    var var_1 = (firstLeadingBit(u_input.b.yyz) & _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.a.x), ~u_input.a.zzz), u_input.a.xxx & abs(vec3<u32>(121291u, u_input.b.x, 4294967295u)))) ^ vec3<u32>(_wgslsmith_mod_u32(max(~u_input.a.x, u_input.a.x), ~(~u_input.b.x)), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u), ~62210u), ~u_input.a.x);
    global1 = func_1(Struct_1(vec3<bool>(false, _wgslsmith_sub_i32(65934i, 0i) < global3.b.x, all(vec2<bool>(var_0.a.x, true))), -u_input.d), select(1u, ~var_1.x, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1921f, _wgslsmith_f_op_f32(min(756f, -242f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1379f)) + _wgslsmith_f_op_f32(abs(-1307f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -878f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(556f * 1721f)), 1108f)));
    var_0 = func_1(Struct_1(!vec3<bool>(true, true, global3.a.x), select(global1.b, -vec4<i32>(global2[_wgslsmith_index_u32(1u, 28u)], 0i, 0i, global3.b.x) & ~vec4<i32>(var_0.b.x, 0i, 40389i, -10583i), false && any(vec2<bool>(false, var_0.a.x)))), ~0u, global0[_wgslsmith_index_u32(abs(select(1u << ((var_1.x >> (var_1.x % 32u)) % 32u), var_1.x, var_0.a.x)), 16u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, _wgslsmith_f_op_f32(f32(-1f) * -695f), -312f, _wgslsmith_f_op_f32(1329f + -2055f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-320f, 972f), _wgslsmith_f_op_f32(-675f + 1991f), _wgslsmith_div_f32(602f, 454f), _wgslsmith_div_f32(-1215f, 584f)))));
    let var_3 = vec2<u32>(1u, 66445u);
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(min(-2014f, var_2.x)))))), vec3<i32>(-1i) * -(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, global2[_wgslsmith_index_u32(25215u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<i32>(global1.b.x, 1i, -2147483647i)) | vec3<i32>(u_input.d.x, -2147483647i, -1i)));
}

