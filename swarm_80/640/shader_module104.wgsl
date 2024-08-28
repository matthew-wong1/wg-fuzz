struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9>;

var<private> global1: array<f32, 12> = array<f32, 12>(1162f, 1254f, 1090f, -162f, -498f, 958f, 945f, 1000f, 884f, -498f, 1102f, 477f);

var<private> global2: i32;

var<private> global3: Struct_4 = Struct_4(Struct_2(49779u), 697f, vec4<u32>(0u, 4294967295u, 1u, 49430u), vec4<i32>(2147483647i, -1i, i32(-2147483648), 2147483647i));

var<private> global4: f32 = 2006f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(global3.c.yx, vec2<u32>(global3.a.a, ~max(arg_2, arg_2))), _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.c.zx, _wgslsmith_mod_vec2_u32(global3.c.wz, vec2<u32>(global3.a.a, 60976u))), global3.c.zx));
    var var_1 = ~global3.d;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(global3.b, -234f))))))));
    var var_3 = true;
    let var_4 = global0[_wgslsmith_index_u32(reverseBits(~20824u), 9u)];
    return _wgslsmith_dot_vec2_u32(select(abs(select(vec2<u32>(0u, u_input.b), vec2<u32>(global3.c.x, var_0.x), vec2<bool>(arg_3.x, true)) | u_input.c.yz), select(u_input.c.xw, ~(~vec2<u32>(1u, var_4.c.x)), all(vec2<bool>(arg_3.x, true))), arg_3), vec2<u32>(arg_2, 84266u));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = u_input.c.yww;
    global3 = Struct_4(Struct_2(func_3(all(vec2<bool>(true, false)), -406f, 15873u << (var_0.x % 32u), vec2<bool>(true, true)) | 36607u), _wgslsmith_f_op_f32(round(1f)), min(~(~vec4<u32>(global3.a.a, 1u, 0u, 41764u) | select(u_input.c, global3.c, vec4<bool>(true, true, false, false))), _wgslsmith_div_vec4_u32(global3.c >> (~global3.c % vec4<u32>(32u)), u_input.c)), vec4<i32>(~46078i, -_wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, -8678i), _wgslsmith_dot_vec2_i32(arg_0.zw, arg_1.b.wy)), ~global3.d.x, arg_0.x));
    var var_1 = global3.a;
    global3 = global0[_wgslsmith_index_u32(func_3((_wgslsmith_mult_u32(~var_1.a, 111910u) != var_0.x) | !any(vec4<bool>(false, true, true, false)), 407f, ~var_0.x, vec2<bool>(select(_wgslsmith_mult_i32(arg_1.a, -1i) > -16063i, true, u_input.e >= 26622i), true)), 9u)];
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2260f);
    return global3.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_3) -> u32 {
    global3 = Struct_4(Struct_2(~(~global3.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(floor(333f))))), global3.c, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(arg_3.b.b, ~vec4<i32>(1i, 2147483647i, 40204i, u_input.e)), vec4<i32>((u_input.e >> (1u % 32u)) | (global3.d.x << (global3.c.x % 32u)), 1i, _wgslsmith_clamp_i32(global3.d.x, global3.d.x, -58716i), arg_3.b.a << (79131u % 32u))));
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.xxz), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(arg_1.xxx, vec3<f32>(-1381f, global1[_wgslsmith_index_u32(arg_0.a, 12u)], -1000f))))))))));
    var var_1 = !select(select(!vec4<bool>(false, true, arg_3.a, false), vec4<bool>(arg_3.a, global3.d.x >= global3.d.x, arg_3.a, arg_3.a), vec4<bool>(!arg_3.a, false, arg_3.a, true)), select(select(!vec4<bool>(arg_3.a, arg_3.a, false, arg_3.a), !vec4<bool>(true, true, arg_3.a, arg_3.a), select(vec4<bool>(false, arg_3.a, arg_3.a, false), vec4<bool>(false, arg_3.a, true, arg_3.a), false)), vec4<bool>(any(vec2<bool>(arg_3.a, false)), any(vec3<bool>(true, arg_3.a, true)), !arg_3.a, true), vec4<bool>(false, arg_3.a, false, any(vec4<bool>(arg_3.a, true, true, arg_3.a)))), vec4<bool>((true & arg_3.a) & true, any(vec4<bool>(arg_3.a, false, false, false)), false, all(!vec4<bool>(arg_3.a, arg_3.a, true, arg_3.a))));
    global1 = array<f32, 12>();
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(52855u, _wgslsmith_div_u32(u_input.c.x, global3.a.a) & 35253u), global3.a.a, abs(~(1u << (_wgslsmith_dot_vec4_u32(global3.c, vec4<u32>(124259u, arg_0.a, arg_0.a, global3.c.x)) % 32u))));
    return select(0u, global3.c.x, false);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: u32) -> vec3<f32> {
    let var_0 = 378f;
    var var_1 = global3.a;
    var var_2 = ~(~(~vec3<u32>(1u, 0u, 4294967295u)) >> (global3.c.yxw % vec3<u32>(32u))) | ~firstTrailingBit(max(_wgslsmith_mult_vec3_u32(u_input.c.xyy, u_input.c.xww), global3.c.wwx >> (global3.c.zxy % vec3<u32>(32u))));
    global3 = global0[_wgslsmith_index_u32(~(~func_4(func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -5071i, 51232i, 2147483647i), global3.d, global3.d), Struct_1(15102i, vec4<i32>(global3.d.x, global3.d.x, 3714i, 1i), global3.d.zy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, -230f, arg_1.x, 1000f))), global3.d.xyz, Struct_3(true, Struct_1(u_input.e, global3.d, vec2<i32>(u_input.e, global3.d.x)), Struct_1(22795i, global3.d, global3.d.wy)))), 9u)];
    let var_3 = vec2<u32>(~11080u, abs(var_1.a) >> (var_2.x % 32u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_1)) * _wgslsmith_f_op_vec3_f32(arg_1 + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1392f, -952f)))) + _wgslsmith_f_op_vec3_f32(-arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 9>();
    var var_0 = Struct_2(global3.c.x);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, global1[_wgslsmith_index_u32(var_0.a, 12u)], global1[_wgslsmith_index_u32(var_0.a, 12u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(false, false, true), vec3<f32>(-863f, global3.b, -185f), vec2<u32>(1u, 1u), 1u)) * _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], -921f, 584f), vec3<f32>(695f, -395f, -262f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-818f, 625f, global3.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(412f, -750f, 910f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1051f, global3.b)), global3.b, 109f));
    var var_2 = firstLeadingBit(~vec4<i32>(1i, ~max(2410i, 0i), 1i, reverseBits(-global3.d.x)));
    global4 = _wgslsmith_f_op_f32(floor(-1464f));
    var var_3 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)));
    var var_4 = Struct_1(countOneBits(firstTrailingBit(_wgslsmith_mod_i32(-47966i, 14469i) & -u_input.a)), _wgslsmith_mult_vec4_i32(global3.d, global3.d), min(global3.d.zx | global3.d.wz, abs(global3.d.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(641f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global3.b, global3.b)), _wgslsmith_f_op_f32(-var_1.x)))))));
}

