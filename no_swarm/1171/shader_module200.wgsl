struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<bool>, 27>;

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(-446f, 1000f, 2963f), vec3<f32>(738f, -1295f, 530f), vec3<f32>(-1000f, 622f, 197f), vec3<f32>(-1335f, -641f, 1511f), vec3<f32>(-1034f, -1305f, 242f), vec3<f32>(904f, -1000f, 2131f), vec3<f32>(1095f, -1418f, 782f), vec3<f32>(1890f, -782f, 1000f), vec3<f32>(1000f, 724f, -345f), vec3<f32>(747f, -420f, -905f), vec3<f32>(395f, -270f, -933f), vec3<f32>(2367f, -1144f, -1594f), vec3<f32>(1054f, -528f, 2001f), vec3<f32>(484f, 211f, 802f), vec3<f32>(213f, -745f, 1317f), vec3<f32>(1125f, 1000f, -239f), vec3<f32>(1962f, -1000f, 1040f), vec3<f32>(465f, -130f, -995f), vec3<f32>(412f, 849f, -1000f), vec3<f32>(1000f, 1261f, 994f), vec3<f32>(650f, 1339f, 234f), vec3<f32>(1404f, -1000f, 752f), vec3<f32>(-1878f, 746f, 864f), vec3<f32>(-132f, -2219f, 813f), vec3<f32>(956f, -644f, 834f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    return Struct_2(false, arg_1, !all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), Struct_1(firstTrailingBit(~(~u_input.b.wyy)), -2147483647i));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = ~vec3<i32>(-_wgslsmith_mod_i32(u_input.d, u_input.a.x), 2447i, arg_1.d.b >> (abs(_wgslsmith_mult_u32(u_input.b.x, arg_1.d.a.x)) % 32u));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(11448u, ~firstTrailingBit(arg_3.a.x)), 25u)];
    return 232f;
}

fn func_3(arg_0: Struct_3) -> f32 {
    global1 = array<vec4<bool>, 27>();
    let var_0 = u_input.c;
    return _wgslsmith_f_op_f32(f32(-1f) * -2642f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(453f + _wgslsmith_f_op_f32(func_2(507f, func_1(vec2<i32>(1i, -24905i), Struct_1(vec3<u32>(u_input.c, 1u, 1u), 46527i)), false, global2[_wgslsmith_index_u32(select(4294967295u, u_input.c, true), 25u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_3(-1254f, u_input.a.x, vec3<u32>(8986u, 1u, 4294967295u), u_input.b.x))))))));
    let var_1 = -(~(~vec3<i32>(u_input.a.x, u_input.a.x, -1i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(24565u, u_input.c, 1u), vec3<u32>(1u, 57588u, 4294967295u)) % vec3<u32>(32u))) & vec3<i32>(u_input.d, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(16792i, 2147483647i, 47738i, -9217i) | vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<i32>(36328i, -2147483647i, 2147483647i, 1i)))));
    global2 = array<Struct_1, 25>();
    let var_2 = vec2<bool>(func_1(vec2<i32>(func_1(var_1.zy, Struct_1(u_input.b.xyx, u_input.d)).b.b, ~var_1.x) | -(vec2<i32>(u_input.d, -2147483647i) & var_1.yy), Struct_1(select(vec3<u32>(674u, 49903u, u_input.b.x), u_input.b.yxw, vec3<bool>(false, false, false)) | u_input.b.zwy, -(~u_input.a.x))).c, false);
    let var_3 = vec3<f32>(183f, _wgslsmith_f_op_f32(295f + -910f), _wgslsmith_f_op_f32(func_3(Struct_3(-723f, ~(~26675i), reverseBits(u_input.b.yzw), ~0u))));
    let x = u_input.a;
    s_output = StorageBuffer(max(-vec4<i32>(_wgslsmith_mult_i32(-39675i, u_input.a.x), min(u_input.a.x, u_input.d), _wgslsmith_sub_i32(u_input.d, 11105i), ~1i), vec4<i32>(_wgslsmith_mult_i32(var_1.x, u_input.d) & u_input.a.x, -u_input.a.x, _wgslsmith_mod_i32(var_1.x, select(var_1.x, 1i, var_2.x)), -(u_input.a.x | var_1.x))), abs(select(~(vec2<u32>(u_input.c, 4294967295u) >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))), vec2<u32>(u_input.c, ~4294967295u), func_1(vec2<i32>(u_input.d, var_1.x), func_1(vec2<i32>(u_input.d, u_input.a.x), Struct_1(u_input.b.wwx, 2147483647i)).b).a)));
}

