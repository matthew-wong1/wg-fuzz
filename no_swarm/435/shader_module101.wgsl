struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(true, vec4<f32>(-115f, 2197f, 853f, 326f)), Struct_1(false, vec4<f32>(-833f, 294f, -746f, 503f)), Struct_1(false, vec4<f32>(-518f, -554f, -1203f, -945f)), Struct_1(true, vec4<f32>(-245f, -793f, 1171f, 880f)), Struct_1(false, vec4<f32>(-960f, 937f, -862f, -2126f)), Struct_1(false, vec4<f32>(274f, -677f, 1096f, -1040f)), Struct_1(true, vec4<f32>(2320f, 398f, 725f, -433f)), Struct_1(true, vec4<f32>(-528f, -557f, 841f, 254f)), Struct_1(true, vec4<f32>(-594f, 1433f, -124f, -1380f)), Struct_1(false, vec4<f32>(-900f, 341f, -923f, 1025f)), Struct_1(false, vec4<f32>(661f, 1526f, -423f, 885f)), Struct_1(true, vec4<f32>(-218f, -1000f, -1098f, -827f)), Struct_1(false, vec4<f32>(804f, 972f, -2147f, -514f)), Struct_1(false, vec4<f32>(-565f, 2013f, -290f, 197f)), Struct_1(true, vec4<f32>(602f, -1370f, -156f, 1728f)), Struct_1(false, vec4<f32>(910f, 802f, -429f, -1357f)), Struct_1(false, vec4<f32>(-852f, 1458f, 1672f, -979f)), Struct_1(false, vec4<f32>(-1300f, -963f, 850f, -1000f)), Struct_1(false, vec4<f32>(904f, -335f, -264f, 303f)), Struct_1(false, vec4<f32>(295f, 1095f, 392f, 197f)), Struct_1(true, vec4<f32>(366f, 446f, 2211f, 895f)));

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true));

var<private> global3: array<vec2<bool>, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec4<i32>) -> bool {
    let var_0 = arg_1.b.c.b.x;
    var var_1 = Struct_3(arg_1.a, arg_1.b, arg_1.b.e.zzz);
    global3 = array<vec2<bool>, 15>();
    global1 = array<Struct_1, 21>();
    global0 = var_1.b.e.xx;
    return any(select(!(!global3[_wgslsmith_index_u32(var_1.a.x, 15u)]), vec2<bool>(arg_1.b.a == -2147483647i, global0.x), !(!var_1.c.x)));
}

fn func_3() -> f32 {
    let var_0 = Struct_5(-360i, true);
    let var_1 = -1i;
    let var_2 = any(select(!select(vec4<bool>(var_0.b, global0.x, true, var_0.b), !global2[_wgslsmith_index_u32(u_input.b, 11u)], !vec4<bool>(var_0.b, var_0.b, true, global0.x)), select(vec4<bool>(all(global2[_wgslsmith_index_u32(22629u, 11u)]), func_2(vec3<f32>(-805f, -278f, 975f), Struct_3(vec2<u32>(0u, u_input.b), Struct_2(0i, true, global1[_wgslsmith_index_u32(u_input.b, 21u)], false, global2[_wgslsmith_index_u32(u_input.b, 11u)]), vec3<bool>(var_0.b, false, true)), u_input.c), !global0.x, all(global2[_wgslsmith_index_u32(0u, 11u)])), !select(vec4<bool>(false, var_0.b, true, var_0.b), global2[_wgslsmith_index_u32(u_input.b, 11u)], global2[_wgslsmith_index_u32(u_input.b, 11u)]), select(!vec4<bool>(false, false, true, global0.x), vec4<bool>(true, false, global0.x, false), global2[_wgslsmith_index_u32(u_input.b, 11u)])), !func_2(vec3<f32>(1f, 1f, 1f), Struct_3(vec2<u32>(u_input.b, u_input.b), Struct_2(-37536i, false, global1[_wgslsmith_index_u32(26664u, 21u)], global0.x, global2[_wgslsmith_index_u32(53797u, 11u)]), vec3<bool>(var_0.b, false, var_0.b)), ~u_input.c)));
    global2 = array<vec4<bool>, 11>();
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -945f), -392f) - -1077f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(683f)), 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-234f, 316f)), 935f)) * 1288f), _wgslsmith_f_op_f32(select(-164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-838f * _wgslsmith_f_op_f32(f32(-1f) * -2081f))), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(850f, -1077f)))), _wgslsmith_div_f32(535f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-689f)))))));
    return var_3.x;
}

fn func_1(arg_0: bool) -> f32 {
    global1 = array<Struct_1, 21>();
    global0 = vec2<bool>(any(vec3<bool>(func_2(vec3<f32>(-1000f, -376f, -182f), Struct_3(vec2<u32>(4294967295u, u_input.b), Struct_2(-28367i, false, Struct_1(global0.x, vec4<f32>(1000f, -1184f, -320f, -146f)), false, vec4<bool>(true, false, global0.x, arg_0)), vec3<bool>(true, false, true)), u_input.c), true, false)) | true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -610f))) <= _wgslsmith_f_op_f32(426f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(max(-132f, 479f)))));
    var var_0 = vec3<bool>(abs(u_input.b) <= 1u, any(!(!vec3<bool>(true, arg_0, arg_0))), false);
    let var_1 = ~(~_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, 2147483647i, 22613i)), u_input.c.zxz));
    var var_2 = u_input.b ^ 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-650f - _wgslsmith_f_op_f32(min(616f, _wgslsmith_f_op_f32(func_3())))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(func_1(true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -601f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(588f, -385f)))), _wgslsmith_f_op_f32(f32(-1f) * -1475f)), _wgslsmith_div_u32(_wgslsmith_sub_u32(countOneBits(_wgslsmith_mod_u32(104159u, u_input.b)), ~_wgslsmith_add_u32(u_input.b, 14929u)), u_input.b), 780f);
}

