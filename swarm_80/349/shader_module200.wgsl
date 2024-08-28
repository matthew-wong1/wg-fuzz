struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<u32>(16734u, 80322u, 79508u, 8155u), -1i, 2147483647i, 374f, true), Struct_1(vec4<u32>(1u, 55266u, 1u, 55789u), -34164i, 22282i, 885f, false), Struct_1(vec4<u32>(1u, 15284u, 27437u, 4294967295u), -44061i, 0i, -2522f, true), Struct_1(vec4<u32>(52929u, 4294967295u, 1u, 0u), -43576i, 1i, 942f, true), Struct_1(vec4<u32>(0u, 19780u, 1351u, 79897u), 2147483647i, 1i, -1105f, true), Struct_1(vec4<u32>(1u, 4294967295u, 39727u, 10753u), -1i, -12498i, -328f, true), Struct_1(vec4<u32>(4294967295u, 60902u, 20444u, 42164u), 25222i, -1i, -223f, false), Struct_1(vec4<u32>(4294967295u, 0u, 12400u, 0u), -28650i, 1i, 983f, false), Struct_1(vec4<u32>(121503u, 1u, 1808u, 1u), -561i, 49440i, 2177f, true), Struct_1(vec4<u32>(0u, 0u, 1u, 4294967295u), -5356i, 0i, 1524f, false), Struct_1(vec4<u32>(24890u, 0u, 1u, 70301u), i32(-2147483648), 0i, 421f, false), Struct_1(vec4<u32>(1u, 11640u, 1u, 1u), i32(-2147483648), -1i, -597f, true), Struct_1(vec4<u32>(1u, 46263u, 0u, 1u), 11770i, 1i, 213f, false), Struct_1(vec4<u32>(16814u, 1u, 4294967295u, 4294967295u), -16423i, 1i, -307f, true), Struct_1(vec4<u32>(1u, 42510u, 15068u, 21507u), 15333i, 1i, 1700f, false), Struct_1(vec4<u32>(0u, 0u, 6463u, 1u), 0i, i32(-2147483648), 1345f, true), Struct_1(vec4<u32>(1u, 48068u, 0u, 3059u), 38375i, i32(-2147483648), 619f, true));

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(39246u, 4294967295u, 1u, 2373u), i32(-2147483648), -39386i, 751f, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32) -> u32 {
    global0 = array<Struct_1, 17>();
    global2 = global0[_wgslsmith_index_u32(56209u, 17u)];
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(-61286i, global2.c, global2.c, 2147483647i), vec4<i32>(global2.c, -1i, -1i, global2.b)) ^ ((vec4<i32>(global2.b, 2147483647i, global2.c, 0i) ^ vec4<i32>(-40512i, 35583i, global2.c, 2147483647i)) ^ countOneBits(vec4<i32>(81473i, -1i, global2.b, 2147483647i))), ~select(vec4<i32>(-1i, global2.c, global2.c, global2.b), vec4<i32>(global2.b, 15621i, -59291i, 30777i), vec4<bool>(false, global2.e, true, true)) ^ select(reverseBits(vec4<i32>(2147483647i, global2.c, global2.b, global2.b)), vec4<i32>(20793i, global2.b, -1i, global2.b), global2.e)), ~(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-82990i, global2.b, global2.c, global2.b), vec4<i32>(global2.c, -1i, global2.b, global2.b)), select(vec4<i32>(-1i, global2.c, 35954i, -52191i), vec4<i32>(global2.c, -1i, global2.c, global2.c), vec4<bool>(global2.e, global2.e, true, true)))));
    var var_1 = !(!(!(!select(vec4<bool>(global2.e, global2.e, true, global2.e), vec4<bool>(true, false, false, global2.e), true))));
    global1 = 46471u;
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> vec4<bool> {
    global0 = array<Struct_1, 17>();
    var var_0 = select(any(!vec4<bool>(select(global2.e, arg_0.e, global2.e), true, false, arg_0.e)), any(select(vec3<bool>(!global2.e, true, false | global2.e), vec3<bool>(arg_0.a.x >= 10103u, true, true), select(vec3<bool>(global2.e, false, false), vec3<bool>(arg_0.e, global2.e, false), vec3<bool>(false, true, false)))), !((all(vec4<bool>(arg_0.e, false, false, arg_0.e)) && global2.e) == !any(vec2<bool>(true, true))));
    global2 = Struct_1(abs(~(~(~vec4<u32>(arg_0.a.x, global2.a.x, 0u, 0u)))), ~arg_2, -50781i, arg_1, arg_0.a.x != ~func_3(1u));
    var_0 = true;
    global0 = array<Struct_1, 17>();
    return vec4<bool>(global2.e | (_wgslsmith_sub_i32(~2147483647i, min(arg_2, 0i)) > _wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(-2147483647i, 0i))), all(vec4<bool>(all(vec2<bool>(arg_0.e, false)) & true, (1i << (u_input.a.x % 32u)) < -50429i, !any(vec2<bool>(arg_0.e, arg_0.e)), global2.e)), select(true, arg_0.e, true), false);
}

fn func_1(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = select(select(!select(select(vec4<bool>(false, global2.e, true, global2.e), vec4<bool>(false, global2.e, false, true), false), !vec4<bool>(false, false, true, global2.e), vec4<bool>(global2.e, global2.e, false, global2.e)), select(select(vec4<bool>(false, false, true, false), func_2(global0[_wgslsmith_index_u32(global2.a.x, 17u)], arg_1, -1i), any(vec3<bool>(global2.e, true, true))), vec4<bool>(u_input.a.x == 4294967295u, any(vec3<bool>(false, global2.e, global2.e)), true, -371f != arg_1), select(vec4<bool>(false, true, global2.e, global2.e), !vec4<bool>(global2.e, global2.e, global2.e, false), vec4<bool>(true, global2.e, true, global2.e))), !select(vec4<bool>(global2.e, global2.e, global2.e, false), !vec4<bool>(global2.e, global2.e, global2.e, global2.e), true)), select(vec4<bool>(firstTrailingBit(-27687i) != ~global2.c, false && !global2.e, all(vec2<bool>(true, global2.e)), global2.e), func_2(global0[_wgslsmith_index_u32(1u, 17u)], arg_1, 1i), !(!vec4<bool>(global2.e, false, global2.e, true))), global2.e);
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(~select(select(global2.a, vec4<u32>(u_input.a.x, 0u, u_input.a.x, 27377u), var_0.x), select(global2.a, u_input.a, vec4<bool>(global2.e, global2.e, false, global2.e)), !vec4<bool>(true, false, global2.e, true)), select(~(global2.a & u_input.a), global2.a, false)), reverseBits(i32(-1i) * -2147483647i), global2.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.d - -877f), arg_0)), _wgslsmith_f_op_f32(max(arg_1, 129f)))), -1470f)), true);
    var var_2 = _wgslsmith_f_op_f32(floor(1000f));
    return -select((_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(var_1.b, 59917i)) | max(global2.b, global2.b)) | -38278i, reverseBits(-1i), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(u_input.a.x | 1u, global2.a.x & global2.a.x, global2.a.x, global2.a.x), func_1(global2.d, _wgslsmith_f_op_f32(floor(312f))), firstTrailingBit(~global2.c << ((1u & u_input.a.x) % 32u)), _wgslsmith_f_op_f32(global2.d + 111f), global2.e & !(false || (85514i > global2.b)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global2.a.zw, var_0.a.yw), ~u_input.a.xw), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-310f, 1695f)) - _wgslsmith_f_op_f32(-1178f * 1005f)), global2.d)), _wgslsmith_div_vec2_u32(var_0.a.xy, var_0.a.yx));
}

