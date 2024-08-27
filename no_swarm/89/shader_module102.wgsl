struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(913f, -213f, -1393f);

var<private> global1: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(1u, 87248u), vec2<u32>(1u, 21599u), vec2<u32>(89513u, 4294967295u), vec2<u32>(2648u, 39970u), vec2<u32>(0u, 1u), vec2<u32>(28777u, 0u), vec2<u32>(16647u, 53479u), vec2<u32>(21961u, 120351u), vec2<u32>(63120u, 0u), vec2<u32>(4294967295u, 81680u), vec2<u32>(5736u, 1u), vec2<u32>(55847u, 4294967295u), vec2<u32>(113513u, 34727u), vec2<u32>(1u, 0u), vec2<u32>(37483u, 0u), vec2<u32>(1u, 4294967295u));

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-255f), Struct_1(-734f), Struct_1(-1453f), Struct_1(573f), Struct_1(2509f), Struct_1(757f), Struct_1(1144f), Struct_1(-1000f), Struct_1(1527f), Struct_1(401f), Struct_1(1000f), Struct_1(-504f), Struct_1(2072f), Struct_1(446f), Struct_1(-1000f), Struct_1(432f), Struct_1(-260f), Struct_1(-389f), Struct_1(-181f), Struct_1(1634f), Struct_1(241f), Struct_1(-989f), Struct_1(334f), Struct_1(-565f), Struct_1(-391f), Struct_1(-718f), Struct_1(-330f), Struct_1(-1134f), Struct_1(-1137f));

var<private> global4: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-136f), Struct_1(298f), Struct_1(1000f), Struct_1(-1051f), Struct_1(-394f), Struct_1(-396f), Struct_1(-309f), Struct_1(-243f), Struct_1(-396f), Struct_1(-128f), Struct_1(-652f), Struct_1(1000f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(-1074f)))))));
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -730f))))));
    global1 = array<vec2<u32>, 16>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-207f, -321f, global0.x, global0.x) + vec4<f32>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-522f, 263f, -578f, -1000f) - vec4<f32>(global0.x, -930f, global0.x, 1316f)), true)))));
    global3 = array<Struct_1, 29>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(719f, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-951f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    var var_1 = _wgslsmith_add_vec4_i32(-reverseBits(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -6746i, u_input.b.x, 0i), vec4<i32>(38092i, -57780i, -2147483647i, -31001i))), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b.x, -2147483647i, 1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b.x), u_input.b)), reverseBits(firstTrailingBit(vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, -1i)))));
    global3 = array<Struct_1, 29>();
    let var_2 = global3[_wgslsmith_index_u32(66330u, 29u)];
    var var_3 = vec2<i32>(~(-57197i), -21167i);
    let var_4 = global4[_wgslsmith_index_u32(35138u, 12u)];
    let var_5 = _wgslsmith_mod_i32(var_1.x | reverseBits(_wgslsmith_mod_i32(var_3.x, countOneBits(-1i))), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_5, -1000f);
}

