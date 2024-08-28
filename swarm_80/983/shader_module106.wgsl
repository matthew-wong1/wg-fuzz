struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<bool>(true, true, true), 4294967295u, vec4<u32>(57656u, 0u, 49726u, 43293u), vec3<bool>(true, false, false), vec3<f32>(136f, -586f, -426f)), Struct_1(vec3<bool>(true, true, true), 1u, vec4<u32>(53055u, 0u, 82254u, 4294967295u), vec3<bool>(true, true, false), vec3<f32>(1485f, -181f, 940f)), Struct_1(vec3<bool>(false, false, false), 1u, vec4<u32>(9069u, 13451u, 15161u, 60592u), vec3<bool>(true, false, false), vec3<f32>(-542f, 739f, 573f)), Struct_1(vec3<bool>(false, true, true), 1u, vec4<u32>(1u, 36482u, 21624u, 68617u), vec3<bool>(true, false, true), vec3<f32>(1364f, -706f, -1282f)), Struct_1(vec3<bool>(true, false, false), 0u, vec4<u32>(8112u, 14829u, 4294967295u, 42361u), vec3<bool>(false, false, true), vec3<f32>(898f, -898f, -228f)), Struct_1(vec3<bool>(false, true, true), 1u, vec4<u32>(15823u, 51829u, 14026u, 0u), vec3<bool>(false, true, true), vec3<f32>(990f, 1316f, -876f)), Struct_1(vec3<bool>(true, false, false), 1u, vec4<u32>(70613u, 30540u, 4294967295u, 43148u), vec3<bool>(false, true, true), vec3<f32>(644f, -1262f, -2131f)), Struct_1(vec3<bool>(true, true, false), 1u, vec4<u32>(1u, 5601u, 8421u, 4294967295u), vec3<bool>(true, false, false), vec3<f32>(-537f, -561f, 1105f)), Struct_1(vec3<bool>(true, false, true), 20919u, vec4<u32>(1u, 30125u, 87102u, 4294967295u), vec3<bool>(true, false, true), vec3<f32>(-930f, 1343f, -1578f)), Struct_1(vec3<bool>(false, true, true), 35115u, vec4<u32>(56959u, 1u, 0u, 4294967295u), vec3<bool>(false, true, true), vec3<f32>(-994f, 1000f, 1493f)), Struct_1(vec3<bool>(false, true, false), 27001u, vec4<u32>(7836u, 0u, 15220u, 41481u), vec3<bool>(false, true, false), vec3<f32>(1532f, -259f, 1544f)), Struct_1(vec3<bool>(false, true, false), 44991u, vec4<u32>(4826u, 50303u, 14073u, 0u), vec3<bool>(true, true, false), vec3<f32>(-929f, 814f, 267f)), Struct_1(vec3<bool>(false, false, true), 12001u, vec4<u32>(0u, 0u, 1u, 31734u), vec3<bool>(true, false, true), vec3<f32>(776f, 990f, 1047f)), Struct_1(vec3<bool>(false, true, true), 4294967295u, vec4<u32>(10950u, 30851u, 4294967295u, 4294967295u), vec3<bool>(false, false, true), vec3<f32>(125f, -1401f, 135f)), Struct_1(vec3<bool>(false, false, false), 4294967295u, vec4<u32>(4294967295u, 4294967295u, 0u, 21106u), vec3<bool>(true, true, true), vec3<f32>(-1901f, -1605f, 2068f)), Struct_1(vec3<bool>(true, true, true), 0u, vec4<u32>(71433u, 4294967295u, 11258u, 4294967295u), vec3<bool>(true, false, false), vec3<f32>(-856f, -626f, 1000f)), Struct_1(vec3<bool>(false, false, true), 0u, vec4<u32>(50289u, 2404u, 5415u, 89541u), vec3<bool>(false, true, false), vec3<f32>(-1232f, -131f, 916f)));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    return -760f;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>) -> vec3<bool> {
    global0 = array<Struct_1, 17>();
    let var_0 = vec3<u32>(u_input.c.x | 4294967295u, 4294967295u, abs(1u) << (0u % 32u));
    let var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b << (min(abs(vec4<u32>(u_input.c.x, u_input.c.x, 68611u, 37135u)), vec4<u32>(7208u, arg_0.c, 0u, arg_0.c)) % vec4<u32>(32u)), vec4<i32>(0i << (reverseBits(u_input.c.x) % 32u), -1i, -(~(-7919i)), -2147483647i)), vec4<i32>(_wgslsmith_mult_i32(-arg_1, ~(~(-1i))), -7975i, 7000i, arg_1));
    global0 = array<Struct_1, 17>();
    let var_2 = vec4<f32>(1376f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(506f)))))), -227f, _wgslsmith_f_op_f32(-arg_0.a.x));
    return select(select(!(!vec3<bool>(arg_0.b.d.x, false, true)), arg_0.b.d, false), !arg_2.zwx, select(select(any(vec3<bool>(arg_2.x, false, true)), false, all(vec4<bool>(arg_0.b.d.x, arg_0.b.a.x, arg_2.x, arg_2.x))), !any(arg_0.b.a.zx), all(select(arg_2.xyx, arg_2.wzz, false))) & arg_2.x);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(select(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), func_3(Struct_2(vec4<f32>(-1594f, arg_1.x, -571f, arg_1.x), global0[_wgslsmith_index_u32(4294967295u, 17u)], u_input.c.x), 1i, vec4<bool>(true, false, true, true)), true), vec3<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), true), all(vec3<bool>(true, true, true)) || false), _wgslsmith_mult_u32((abs(u_input.c.x) & _wgslsmith_div_u32(u_input.c.x, u_input.c.x)) >> (52403u % 32u), u_input.c.x), abs(_wgslsmith_div_vec4_u32(vec4<u32>(114359u | u_input.c.x, _wgslsmith_div_u32(84066u, u_input.c.x), 89263u, _wgslsmith_dot_vec2_u32(u_input.c.wz, u_input.c.zx)), ~select(vec4<u32>(u_input.c.x, 19231u, 336u, 4294967295u), u_input.c, false))), !vec3<bool>(true, all(vec2<bool>(true, false)), true), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(692f * _wgslsmith_f_op_f32(step(-1064f, arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) - _wgslsmith_f_op_f32(round(arg_0)))));
    let var_1 = all(!(!(!vec4<bool>(true, var_0.a.x, var_0.d.x, true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_div_f32(arg_0, -1012f)))));
    var_0 = global0[_wgslsmith_index_u32(~0u >> (var_0.c.x % 32u), 17u)];
    let var_3 = abs(u_input.a.x);
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -183f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-570f, arg_0))))), -1000f, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -487f)))), Struct_1(vec3<bool>(true, !(true & var_1), true), _wgslsmith_add_u32(~_wgslsmith_div_u32(45849u, 48436u), ~var_0.b), firstLeadingBit(countOneBits(u_input.c)), var_0.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e)), _wgslsmith_f_op_vec3_f32(abs(var_0.e)), func_3(Struct_2(vec4<f32>(1000f, arg_0, arg_0, 601f), global0[_wgslsmith_index_u32(4294967295u, 17u)], 1u), 1i, vec4<bool>(false, var_1, var_1, var_1))))), firstTrailingBit(reverseBits(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(_wgslsmith_f_op_f32(func_1(u_input.b, -(~u_input.b.x), Struct_1(vec3<bool>(true, true, true), u_input.c.x, u_input.c, select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(393f, 554f))))))));
    let var_1 = Struct_2(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1597f)), var_0.a.x, var_0.b.d.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b.e.x * 1191f), 1233f, var_0.b.d.x))), _wgslsmith_f_op_f32(-var_0.b.e.x), -1099f), Struct_1(select(vec3<bool>(var_0.b.a.x, !var_0.b.d.x, any(var_0.b.a)), var_0.b.a, !all(vec4<bool>(var_0.b.a.x, var_0.b.d.x, var_0.b.d.x, true))), ~(~var_0.b.b) >> (u_input.c.x % 32u), vec4<u32>(select(u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, var_0.b.b), 4294967295u > var_0.b.c.x), ~var_0.c, 33687u, min(33686u, var_0.c)), var_0.b.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1849f, var_0.b.e.x, var_0.a.x) + var_0.a.zxw), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(299f, var_0.b.e.x, var_0.b.e.x), vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))))))), firstLeadingBit(~(~(~var_0.b.c.x))));
    let var_2 = abs(-_wgslsmith_div_i32(-u_input.a.x, abs(_wgslsmith_mult_i32(u_input.b.x, u_input.a.x))));
    let var_3 = vec2<bool>(!(func_2(-710f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_1.a.x))).b.d.x != (true | var_1.b.a.x)), var_0.b.d.x);
    global0 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(1u), vec4<f32>(var_1.b.e.x, _wgslsmith_f_op_f32(-968f - var_0.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1447f) * var_1.a.x))), -1000f), _wgslsmith_sub_u32(43746u, 39185u), 39078i);
}

