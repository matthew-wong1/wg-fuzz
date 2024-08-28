struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(false, false, true, true), 4294967295u, vec4<bool>(false, true, true, false), Struct_1(0u, vec2<i32>(-1i, 2147483647i), vec2<f32>(1013f, 1732f)), Struct_1(0u, vec2<i32>(2147483647i, -12188i), vec2<f32>(557f, 1718f)));

var<private> global1: array<Struct_3, 6>;

var<private> global2: array<vec3<i32>, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_3) -> vec3<i32> {
    var var_0 = arg_2;
    var var_1 = ~select(3798i, select(u_input.b, _wgslsmith_add_i32(abs(u_input.b), 3958i), any(global0.c)), (~(-1i) >= ~u_input.b) | false);
    let var_2 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.c.x - global0.d.c.x), _wgslsmith_f_op_f32(abs(1274f))), _wgslsmith_f_op_f32(select(651f, _wgslsmith_f_op_f32(1099f * global0.e.c.x), 53708u < global0.e.a)), all(vec2<bool>(false, global0.c.x))))));
    let var_3 = -301f;
    let var_4 = (true != global0.c.x) || false;
    return countOneBits(_wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(arg_2.a.a, 3u)], global2[_wgslsmith_index_u32(64472u, 3u)])) & global2[_wgslsmith_index_u32(~(~(~4294967295u)), 3u)];
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = ~func_3(Struct_3(global0.e, vec2<i32>(~arg_1.x, ~arg_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3 + arg_3)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.c.x, 236f, arg_3.x, arg_3.x))), Struct_3(global0.d, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(12184i, -39331i, -2147483647i, global0.e.b.x), vec4<i32>(u_input.b, -21267i, 2147483647i, arg_1.x)), _wgslsmith_add_i32(23936i, global0.e.b.x))));
    let var_1 = Struct_1(~4294967295u, firstLeadingBit(countOneBits(-vec2<i32>(arg_2.x, global0.e.b.x))), _wgslsmith_f_op_vec2_f32(global0.e.c + vec2<f32>(global0.e.c.x, _wgslsmith_f_op_f32(select(-644f, _wgslsmith_f_op_f32(617f - 680f), false)))));
    global0 = Struct_2(!select(global0.a, select(vec4<bool>(true, global0.a.x, true, global0.a.x), !global0.c, vec4<bool>(global0.c.x, global0.c.x, true, global0.a.x)), select(select(global0.c, vec4<bool>(false, false, true, true), global0.a), global0.a, select(vec4<bool>(global0.c.x, global0.c.x, true, false), global0.c, vec4<bool>(global0.c.x, global0.c.x, false, true)))), 4294967295u, !global0.a, global0.e, Struct_1(arg_0.x, ~(global0.d.b | func_3(Struct_3(Struct_1(global0.e.a, vec2<i32>(0i, var_1.b.x), arg_3.xy), var_0.xx), vec4<f32>(global0.e.c.x, arg_3.x, global0.d.c.x, arg_3.x), Struct_3(var_1, global0.d.b)).yy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(439f, 415f))) * _wgslsmith_f_op_vec2_f32(ceil(arg_3.zx))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-836f, var_1.c.x), arg_3.yw)))))));
    let var_2 = abs(1u);
    let var_3 = global1[_wgslsmith_index_u32(105261u, 6u)];
    return Struct_1(_wgslsmith_sub_u32(firstTrailingBit(~arg_0.x & (0u >> (global0.d.a % 32u))), reverseBits(var_3.a.a)), var_0.yx, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.a.c.x))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c.x - -302f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - -1201f) * _wgslsmith_f_op_f32(exp2(var_3.a.c.x)))))));
}

fn func_1() -> u32 {
    global1 = array<Struct_3, 6>();
    var var_0 = Struct_2(global0.a, 13273u, global0.a, global0.e, global0.e);
    global0 = Struct_2(!var_0.a, var_0.b, var_0.a, var_0.e, func_2(vec2<u32>(~var_0.e.a, var_0.d.a) >> (~(~vec2<u32>(1u, 58368u)) % vec2<u32>(32u)), vec2<i32>(~_wgslsmith_sub_i32(15244i, 4962i), _wgslsmith_sub_i32(~var_0.d.b.x, abs(23331i))), min(global2[_wgslsmith_index_u32(39708u, 3u)], ~global2[_wgslsmith_index_u32(~u_input.c, 3u)]), vec4<f32>(1491f, _wgslsmith_f_op_f32(-337f + var_0.d.c.x), var_0.d.c.x, global0.d.c.x)));
    var var_1 = vec2<i32>(-1i) * -select(firstTrailingBit(global0.d.b), vec2<i32>(var_0.d.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.b.x, 20735i, -22667i, -20443i), vec4<i32>(var_0.e.b.x, 2147483647i, -14697i, 1i))), vec2<bool>(false | var_0.c.x, true));
    let var_2 = global2[_wgslsmith_index_u32(1u, 3u)];
    return abs(43878u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.c.x, 918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-462f + -357f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.c.x, arg_3.a.c.x, -180f) - vec3<f32>(arg_2.x, -356f, global0.d.c.x))))), global0.c.xyx));
    global1 = array<Struct_3, 6>();
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(func_1(), ~min(global0.e.b, ~vec2<i32>(0i, global0.e.b.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1037f) * _wgslsmith_f_op_f32(-global0.d.c.x)), global0.e.c.x)), max(firstLeadingBit(~u_input.c), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1351f, 362f) + _wgslsmith_f_op_vec2_f32(-global0.d.c))), Struct_3(global0.e, global0.e.b));
    let var_1 = Struct_1(856u | ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(99011u, global0.b, 0u, u_input.a), vec4<u32>(global0.b, var_0.a, var_0.a, var_0.a)), ~vec4<u32>(u_input.a, 4294967295u, 51445u, u_input.c)), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(abs(0i), func_4(Struct_1(global0.d.a, global0.d.b, vec2<f32>(global0.e.c.x, 412f)), var_0.a, global0.d.c, global1[_wgslsmith_index_u32(2727u, 6u)]).b.x)), ~vec2<i32>(~(-2147483647i), func_2(vec2<u32>(u_input.a, 47764u), global0.d.b, vec3<i32>(68559i, 1i, 10801i), vec4<f32>(var_0.c.x, var_0.c.x, global0.d.c.x, -1000f)).b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-195f)))))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-498f))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - -591f))));
    let var_4 = var_1;
    global2 = array<vec3<i32>, 3>();
    let var_5 = func_4(func_4(Struct_1(firstLeadingBit(reverseBits(var_4.a)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(var_4.b, var_0.b), var_0.b >> (vec2<u32>(0u, 30765u) % vec2<u32>(32u))), func_2(_wgslsmith_div_vec2_u32(vec2<u32>(17700u, var_0.a), vec2<u32>(0u, global0.b)), vec2<i32>(var_4.b.x, var_1.b.x), vec3<i32>(global0.d.b.x, -55123i, -2147483647i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(589f, 623f, global0.e.c.x, var_4.c.x), vec4<f32>(var_0.c.x, var_0.c.x, global0.e.c.x, -165f), true))).c), global0.e.a, func_4(func_2(vec2<u32>(0u, var_4.a), reverseBits(var_4.b), global2[_wgslsmith_index_u32(select(0u, var_1.a, global0.c.x), 3u)], vec4<f32>(158f, var_1.c.x, 411f, var_1.c.x)), var_0.a, var_1.c, global1[_wgslsmith_index_u32(1u, 6u)]).c, Struct_3(global0.d, ~var_1.b | var_1.b)), global0.e.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.e.c)), global1[_wgslsmith_index_u32(1u ^ ((80607u & var_1.a) >> (min(_wgslsmith_sub_u32(1u, var_1.a), 1u) % 32u)), 6u)]);
    var var_6 = true;
    global1 = array<Struct_3, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b, var_5.b.x, var_0.b.x));
}

