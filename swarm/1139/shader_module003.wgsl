struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(83968u, 1u), vec2<u32>(14750u, 26097u), vec2<u32>(6192u, 79386u), vec2<u32>(30996u, 29512u), vec2<u32>(1u, 23400u), vec2<u32>(128581u, 16771u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(39095u, 4294967295u), vec2<u32>(46075u, 56694u), vec2<u32>(38477u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(22727u, 0u), vec2<u32>(0u, 18235u));

var<private> global1: vec4<bool>;

var<private> global2: Struct_4 = Struct_4(vec2<u32>(13014u, 4294967295u), vec2<u32>(1578u, 58001u), false);

var<private> global3: array<Struct_3, 9>;

var<private> global4: Struct_1 = Struct_1(vec4<u32>(11721u, 34484u, 0u, 91350u), vec2<bool>(false, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<bool>) -> vec2<f32> {
    global1 = vec4<bool>(global4.b.x, false, all(!global4.b), false);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f)), -128f) * -286f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-379f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(705f * -196f) + _wgslsmith_div_f32(-182f, 1819f)))))));
    var var_2 = global3[_wgslsmith_index_u32(4294967295u, 9u)];
    global2 = Struct_4(_wgslsmith_mult_vec2_u32(~u_input.b.yz, global2.b), ~_wgslsmith_mult_vec2_u32(~global2.b, abs(global4.a.zz)) & u_input.b.xy, true);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -722f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(878f)))))));
}

fn func_2(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = u_input.a.x;
    global0 = array<vec2<u32>, 13>();
    var var_1 = u_input.a.x;
    let var_2 = Struct_2(vec3<bool>(!(_wgslsmith_mod_u32(global4.a.x, u_input.b.x) <= global2.b.x), global2.c, true));
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_0 * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, true)))));
    return select(select(global1.wxx, select(select(!global1.zwx, vec3<bool>(global1.x, global2.c, true), !vec3<bool>(global1.x, true, false)), vec3<bool>(false, var_2.a.x, !global2.c), vec3<bool>(var_3.x >= -348f, false, global1.x)), global1.x), vec3<bool>(false, 2147483647i < -_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), true && (~u_input.b.x <= ~0u)), !vec3<bool>(true, true, 507f != _wgslsmith_div_f32(822f, var_3.x)));
}

fn func_1(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_2(select(select(!(!global1.zzz), !global1.wyx, false), func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1005f, 109f))), vec2<f32>(655f, -1000f), !vec2<bool>(global2.c, global4.b.x)))), select(vec3<bool>(global2.c, true, func_2(vec2<f32>(-1087f, 1993f)).x), global1.zwx, vec3<bool>(func_2(vec2<f32>(-1000f, 162f)).x, false, global4.b.x))));
    var var_1 = Struct_4(global0[_wgslsmith_index_u32(firstTrailingBit(~0u), 13u)], _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b.x), abs(vec2<u32>(1u, u_input.b.x) | vec2<u32>(arg_0.b.a.x, arg_0.b.a.x))), _wgslsmith_div_i32(max(-16213i, abs(arg_0.a)), countOneBits(2147483647i)) >= (i32(-1i) * -12129i));
    let var_2 = vec2<u32>(~(~min(1u, global4.a.x)), 37876u);
    var_1 = Struct_4(~select(firstTrailingBit(vec2<u32>(43080u, global4.a.x)), min(var_2, global2.b) << (~vec2<u32>(var_1.b.x, 4294967295u) % vec2<u32>(32u)), select(!global1.wy, !vec2<bool>(global1.x, false), any(vec4<bool>(global2.c, false, false, true)))), vec2<u32>(~(~var_2.x), 43708u >> (reverseBits(~global2.a.x) % 32u)), var_1.c);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(498f * -256f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2615f)))))), 879f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1316f)), -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1791f, -167f, false))))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_3(21392i, Struct_1(~global4.a, vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3(global4.b));
    let var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a.x, 53386i, u_input.a.x) >> (vec3<u32>(global4.a.x, 24618u, 27041u) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, u_input.a.x, -1i)) | _wgslsmith_sub_vec3_i32(-abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~vec3<i32>(u_input.a.x, u_input.a.x, -1i) >> (global4.a.zwz % vec3<u32>(32u))), -vec3<i32>(~(~u_input.a.x), -u_input.a.x, u_input.a.x));
    let var_3 = var_1.x;
    global4 = Struct_1(countOneBits(~global4.a), vec2<bool>(global4.b.x, global4.b.x));
    let var_4 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3, -1028f, var_3)));
    let var_5 = vec2<bool>(!global2.c, any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, global4.b.x, true, global2.c), vec4<bool>(global4.b.x, global2.c, global4.b.x, false)), select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(false, global1.x, false, global1.x), true), !vec4<bool>(global2.c, false, global1.x, true))));
    global4 = Struct_1(reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.a.x, global4.a.x, 40306u, global2.b.x), global4.a) << (~(global4.a << (vec4<u32>(3738u, 0u, u_input.b.x, global4.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), !select(!var_5, vec2<bool>(any(vec3<bool>(true, true, global4.b.x)), true), true));
    global2 = Struct_4(~min(~(vec2<u32>(1u, global2.a.x) & vec2<u32>(global2.b.x, 4294967295u)), ~_wgslsmith_mod_vec2_u32(global2.a, global2.a)), reverseBits(~_wgslsmith_mult_vec2_u32(~vec2<u32>(10941u, u_input.b.x), vec2<u32>(1u, 36737u) ^ vec2<u32>(global2.b.x, global2.a.x))), any(vec4<bool>(false, global1.x, var_5.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1))))), vec4<i32>(countOneBits(72148i), ~(0i << (_wgslsmith_dot_vec4_u32(global4.a, global4.a) % 32u)), -7388i, -2147483647i));
}

