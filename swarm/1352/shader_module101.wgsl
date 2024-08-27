struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec4<f32>(1329f, -199f, 209f, -939f), 1i, vec2<u32>(2777u, 0u)), Struct_3(vec4<f32>(-1295f, -662f, -1373f, 206f), i32(-2147483648), vec2<u32>(4294967295u, 35707u)), Struct_3(vec4<f32>(-596f, 228f, -605f, 360f), 1i, vec2<u32>(63362u, 55758u)), Struct_3(vec4<f32>(177f, -1059f, -1309f, 676f), 1i, vec2<u32>(4294967295u, 16626u)), Struct_3(vec4<f32>(-1000f, 869f, -780f, -147f), -54329i, vec2<u32>(4294967295u, 97914u)), Struct_3(vec4<f32>(1553f, -1203f, -916f, -1632f), 10270i, vec2<u32>(0u, 1u)), Struct_3(vec4<f32>(-213f, 1165f, 964f, 689f), 62059i, vec2<u32>(52949u, 4294967295u)), Struct_3(vec4<f32>(852f, 255f, -561f, 169f), -32770i, vec2<u32>(1u, 19026u)), Struct_3(vec4<f32>(-648f, 214f, -318f, 521f), 2147483647i, vec2<u32>(36555u, 0u)), Struct_3(vec4<f32>(376f, -102f, -1000f, -1511f), 12623i, vec2<u32>(31104u, 14536u)), Struct_3(vec4<f32>(182f, 371f, 376f, -1545f), -1270i, vec2<u32>(22932u, 53860u)));

var<private> global2: vec2<i32> = vec2<i32>(-1i, 37908i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_2 {
    return Struct_2(~abs(abs(vec2<u32>(4294967295u, 76756u))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<u32>) -> vec4<u32> {
    let var_0 = Struct_2((firstLeadingBit(vec2<u32>(1u, arg_3.x)) & (vec2<u32>(4294967295u, arg_3.x) ^ ~arg_3.xy)) ^ max(vec2<u32>(arg_2, arg_3.x), ~arg_0));
    global0 = array<Struct_1, 18>();
    var var_1 = vec4<i32>(global2.x & _wgslsmith_add_i32(arg_1.x, arg_1.x), -1i, global2.x, 1i);
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(342f * 784f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1037f)) * _wgslsmith_f_op_f32(f32(-1f) * -975f)), -arg_1.x >= firstTrailingBit(u_input.a.x))), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(774f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1437f)) - _wgslsmith_div_f32(688f, -1095f))), _wgslsmith_mult_i32(arg_1.x, global2.x), vec2<u32>(~(~(~4294967295u)), max(arg_2, arg_2 >> (var_0.a.x % 32u))));
    let var_3 = Struct_3(var_2.a, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-41905i, u_input.a.x)), var_1.wy), -_wgslsmith_div_i32(~19388i, 1i)), arg_3.yy);
    return vec4<u32>(_wgslsmith_sub_u32(~(~var_2.c.x), 4294967295u), ~(~var_2.c.x), _wgslsmith_add_u32(arg_2, arg_2), var_3.c.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    global1 = array<Struct_3, 11>();
    let var_0 = vec4<i32>(-59412i, abs(arg_0.x), _wgslsmith_dot_vec3_i32(-arg_1.c, vec3<i32>(~2147483647i, arg_2.x << (31822u % 32u), _wgslsmith_dot_vec3_i32(arg_1.c, vec3<i32>(global2.x, 0i, -13479i)))) >> (_wgslsmith_mod_u32((25617u << (0u % 32u)) >> (~4294967295u % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 80946u, 3025u), vec3<u32>(50092u, 22396u, 30269u))) % 32u), arg_2.x);
    var var_1 = true;
    global0 = array<Struct_1, 18>();
    global2 = arg_1.c.zx;
    return 24617u;
}

fn func_1() -> Struct_1 {
    global2 = reverseBits(select(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.x << (1042u % 32u), 0i), _wgslsmith_sub_vec2_i32(-vec2<i32>(global2.x, u_input.a.x), vec2<i32>(global2.x, 24118i) & u_input.a)), reverseBits(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(global2.x, u_input.a.x)))), true));
    let var_0 = func_2(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(~vec3<u32>(9717u, 48498u, 1u)), vec3<u32>(~14499u, 1u, _wgslsmith_sub_u32(57076u, 1u)), ~vec3<u32>(0u, 33701u, 13321u)), vec3<u32>(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 40428u), vec3<u32>(1u, 1u, 1u)), firstTrailingBit(24893u))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~min(~19356u, 1u), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(11280u, 4294967295u)) << (~4294967295u % 32u))), 11u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1086f - 615f), _wgslsmith_f_op_f32(991f * 1235f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(537f, -130f)), vec2<f32>(-284f, -387f))))));
    var var_2 = global1[_wgslsmith_index_u32(func_4(reverseBits(select(max(vec4<i32>(40214i, u_input.a.x, 2147483647i, -2147483647i), vec4<i32>(u_input.a.x, 51489i, u_input.a.x, u_input.a.x)), ~vec4<i32>(global2.x, -9671i, global2.x, -6498i), var_1.x < 1252f)) << (_wgslsmith_add_vec4_u32(select(func_3(vec2<u32>(52284u, 0u), u_input.a, var_0.a.x, vec3<u32>(var_0.a.x, 40310u, var_0.a.x)), ~vec4<u32>(69807u, var_0.a.x, 22826u, 4294967295u), true), vec4<u32>(4294967295u, min(19311u, 89444u), var_0.a.x, 12136u)) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(abs(~8381u), 18u)], ~_wgslsmith_div_vec2_i32(~u_input.a, u_input.a & u_input.a)), 11u)];
    var_2 = global1[_wgslsmith_index_u32(var_0.a.x, 11u)];
    return global0[_wgslsmith_index_u32(var_0.a.x, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = max(reverseBits(-firstTrailingBit(-vec4<i32>(var_0.a.x, global2.x, -56159i, -36950i))), vec4<i32>(~global2.x ^ firstLeadingBit(max(u_input.a.x, global2.x)), _wgslsmith_dot_vec3_i32(min(-var_0.c, vec3<i32>(0i, u_input.a.x, -2147483647i) >> (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u))), vec3<i32>(var_0.a.x, -1i, -1i)), -1i, global2.x));
    var var_2 = select(select(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(select(all(vec4<bool>(true, false, false, true)), any(vec4<bool>(false, true, true, true)), true), any(vec2<bool>(true, true))), select(vec2<bool>(all(vec4<bool>(false, false, false, false)), true), vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, false))))), select(vec2<bool>(true, select(all(vec3<bool>(true, false, false)), true, any(vec4<bool>(true, true, true, true)))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), all(vec2<bool>(true, false)) || (select(false, false, false) & true)), vec2<bool>(true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(976f - 428f), _wgslsmith_f_op_f32(f32(-1f) * -177f))))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-257f * -2388f), _wgslsmith_div_f32(-204f, _wgslsmith_f_op_f32(round(125f)))))));
    var var_4 = !select(vec4<bool>(true | !var_2.x, true, false, false), select(vec4<bool>(false, false && var_2.x, !var_2.x, var_2.x), vec4<bool>(!var_2.x, var_2.x, var_2.x, select(var_2.x, false, var_2.x)), vec4<bool>(all(vec4<bool>(false, var_2.x, true, var_2.x)), true, false, any(vec3<bool>(var_2.x, var_2.x, var_2.x)))), select(select(!vec4<bool>(false, true, var_2.x, var_2.x), !vec4<bool>(false, var_2.x, var_2.x, var_2.x), !vec4<bool>(var_2.x, true, var_2.x, var_2.x)), !select(vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(true, true, true, false), false), !vec4<bool>(false, var_2.x, var_2.x, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~_wgslsmith_mod_u32(1u, 1u)));
}

