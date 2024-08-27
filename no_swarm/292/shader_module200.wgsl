struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(-12538i, vec3<bool>(false, false, true), vec3<u32>(39748u, 1u, 1u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: i32, arg_3: vec2<bool>) -> u32 {
    global0 = Struct_5(_wgslsmith_mult_i32(-14896i, reverseBits(_wgslsmith_mult_i32(-1i, arg_2 ^ 1i))), !select(select(global0.b, select(global0.b, vec3<bool>(true, global0.b.x, false), global0.b), !global0.b.x), select(global0.b, !global0.b, all(vec3<bool>(true, false, false))), !global0.b), u_input.c);
    let var_0 = -1459f;
    let var_1 = reverseBits(vec3<i32>(~(~u_input.e) << (64961u % 32u), 1i, arg_0.x));
    var var_2 = ~(~(~global0.c.x)) | 29238u;
    var var_3 = firstTrailingBit(u_input.a);
    return 1u;
}

fn func_2(arg_0: vec4<f32>) -> Struct_5 {
    global0 = Struct_5(u_input.b.x, global0.b, vec3<u32>(26377u, u_input.c.x, u_input.d.x));
    let var_0 = ~reverseBits(2147483647i);
    var var_1 = Struct_1(0u, 1u, global0.b.x, global0.b);
    var_1 = Struct_1(global0.c.x, abs(~_wgslsmith_mult_u32(u_input.d.x, global0.c.x) ^ func_3(~u_input.b, arg_0.xwx, global0.a >> (11201u % 32u), vec2<bool>(true, global0.b.x))), true, select(select(select(vec3<bool>(global0.b.x, global0.b.x, global0.b.x), !vec3<bool>(var_1.c, true, true), all(var_1.d.xx)), !select(global0.b, vec3<bool>(false, global0.b.x, global0.b.x), false), false), vec3<bool>(any(select(var_1.d.yx, vec2<bool>(true, true), var_1.d.x)), any(vec2<bool>(true, var_1.c)), any(vec2<bool>(false, var_1.d.x))), !(any(vec2<bool>(global0.b.x, global0.b.x)) & !global0.b.x)));
    let var_2 = select(select(select(select(!global0.b.yy, vec2<bool>(true, false), all(global0.b.yy)), select(select(vec2<bool>(var_1.c, true), global0.b.zy, var_1.c), select(global0.b.xx, var_1.d.zz, var_1.c), vec2<bool>(global0.b.x, true)), !var_1.d.yz), select(!global0.b.xy, global0.b.xy, select(select(vec2<bool>(var_1.c, false), vec2<bool>(global0.b.x, false), vec2<bool>(var_1.c, true)), !var_1.d.yy, vec2<bool>(false, false))), !vec2<bool>(any(vec4<bool>(false, var_1.d.x, true, true)), true)), var_1.d.zx, !any(select(vec4<bool>(global0.b.x, true, true, var_1.d.x), !vec4<bool>(var_1.c, var_1.d.x, var_1.c, global0.b.x), var_1.d.x)));
    return Struct_5(-_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, 1i), -12559i), !select(!select(vec3<bool>(var_2.x, global0.b.x, false), vec3<bool>(var_1.d.x, false, true), var_1.d), vec3<bool>(var_1.c & var_1.c, all(var_1.d), true), vec3<bool>(false & global0.b.x, true, var_1.c)), ~_wgslsmith_mult_vec3_u32(~(~u_input.c), vec3<u32>(9821u, var_1.a, global0.c.x) << (vec3<u32>(global0.c.x, global0.c.x, var_1.b) % vec3<u32>(32u))));
}

fn func_1() -> i32 {
    global0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-726f, -595f) * -1340f), _wgslsmith_f_op_f32(873f * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-484f, _wgslsmith_f_op_f32(272f + -1922f), false))), 467f));
    var var_0 = !select(global0.b.yy, global0.b.zz, global0.b.yx);
    var var_1 = countOneBits(_wgslsmith_clamp_i32(-975i, _wgslsmith_add_i32(-u_input.a, -2147483647i), -firstTrailingBit(func_2(vec4<f32>(-1073f, -288f, -1489f, 1072f)).a)));
    global0 = Struct_5(_wgslsmith_clamp_i32(1i, global0.a, -70776i), vec3<bool>(any(select(vec4<bool>(global0.b.x, global0.b.x, var_0.x, global0.b.x), vec4<bool>(true, var_0.x, true, true), vec4<bool>(var_0.x, global0.b.x, var_0.x, global0.b.x))), false, global0.a <= -33435i), u_input.c);
    let var_2 = Struct_3(Struct_1(_wgslsmith_clamp_u32(max(2334u, 4294967295u) ^ global0.c.x, ~1u, ~24537u & func_2(vec4<f32>(908f, -1647f, 1244f, -1186f)).c.x), ~_wgslsmith_add_u32(u_input.c.x, reverseBits(4294967295u)), var_0.x, !select(!global0.b, func_2(vec4<f32>(789f, 1116f, 1246f, -600f)).b, global0.b)));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(~(-func_1()), global0.b, ~vec3<u32>(5674u, u_input.d.x, 56835u));
    global0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-211f, 383f, -746f, 866f) * vec4<f32>(614f, 151f, 412f, 2076f)))))));
    var var_0 = select(select(select(select(vec4<bool>(global0.b.x, true, true, true), vec4<bool>(false, false, global0.b.x, global0.b.x), all(vec3<bool>(false, true, global0.b.x))), vec4<bool>(select(true, global0.b.x, global0.b.x), true, true, true), !select(vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, false, false, true), false)), vec4<bool>(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-241f, 713f, 1276f, -585f), vec4<f32>(-1084f, -101f, 101f, -105f), true))).b.x, false, global0.b.x, global0.b.x), select(!(!vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x)), vec4<bool>(true, global0.b.x, false, global0.b.x), 2147483647i > global0.a)), !(!select(!vec4<bool>(false, global0.b.x, true, global0.b.x), vec4<bool>(global0.b.x, false, global0.b.x, true), !vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x))), select(!(!vec4<bool>(true, global0.b.x, global0.b.x, true)), vec4<bool>(true, true, false, true), !all(vec4<bool>(global0.b.x, true, true, false))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-820f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1178f));
    var var_2 = firstTrailingBit(min(min(~(u_input.c.xz >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(u_input.c.xx, vec2<u32>(0u, 1u)) >> (~vec2<u32>(global0.c.x, global0.c.x) % vec2<u32>(32u))), global0.c.xy));
    let var_3 = Struct_4(Struct_2(select(_wgslsmith_add_u32(0u, countOneBits(53917u)), u_input.c.x, true || var_0.x), Struct_1(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.c.x, u_input.c.x), 72440u), u_input.d.x, 0u == var_2.x, global0.b)), vec4<bool>(global0.b.x, (var_0.x && !global0.b.x) & true, var_0.x, true || global0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1187f, 129f, -2376f, -146f) - vec4<f32>(-334f, 1893f, -1492f, 654f)) - vec4<f32>(-369f, -588f, -1630f, -2270f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1222f, -676f, 133f, 1093f), vec4<f32>(1964f, 554f, -249f, 582f), var_0.x)))));
}

