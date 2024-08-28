struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = ~(~vec4<i32>(-24536i, countOneBits(u_input.b), 12144i, u_input.b) >> ((vec4<u32>(40187u, 3291u, u_input.a.x, 1u) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 63711u, u_input.a.x, 29714u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 3234u))) % vec4<u32>(32u)));
    global0 = array<Struct_1, 2>();
    var_0 = firstTrailingBit(-(_wgslsmith_div_vec4_i32(abs(vec4<i32>(49642i, var_0.x, 879i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(29612i, 1051i, 15084i, u_input.b), vec4<i32>(var_0.x, 1i, u_input.b, -13271i), vec4<i32>(0i, 1i, var_0.x, u_input.b))) ^ _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.x, u_input.b, -864i, u_input.b), vec4<i32>(u_input.b, -1i, 1i, var_0.x) << (vec4<u32>(u_input.c.x, 49836u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), vec4<i32>(1i, u_input.b, 386i, u_input.b))));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    var var_0 = 9239u;
    var_0 = _wgslsmith_add_u32(arg_1, ~arg_1);
    let var_1 = vec2<bool>(any(vec2<bool>(true, true)), true);
    let var_2 = Struct_1(func_3(Struct_1(any(select(vec3<bool>(true, false, false), vec3<bool>(false, var_1.x, false), true)), select(select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, var_1.x, false, var_1.x)), select(vec4<bool>(true, var_1.x, true, false), vec4<bool>(true, var_1.x, true, var_1.x), false), !vec4<bool>(var_1.x, true, false, var_1.x)), !all(var_1))), !select(vec4<bool>(var_1.x, all(vec3<bool>(false, true, true)), !var_1.x, func_3(global0[_wgslsmith_index_u32(arg_1, 2u)])), select(!vec4<bool>(var_1.x, var_1.x, false, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), var_1.x), !(!var_1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~arg_0.x), ~arg_0.xy) == ~u_input.b);
    let var_3 = ~(-23580i) | u_input.b;
    return global0[_wgslsmith_index_u32(1u | arg_1, 2u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    let var_0 = vec3<f32>(857f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f) - _wgslsmith_f_op_f32(floor(1852f))))), 1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-444f, -1000f)), _wgslsmith_f_op_f32(exp2(1f)), false)));
    let var_1 = u_input.c.zy;
    var var_2 = ~(~countOneBits(1u));
    let var_3 = _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(-47160i, u_input.b) & vec2<i32>(2147483647i, 12184i), ~abs(vec2<i32>(u_input.b, u_input.b)))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.b, countOneBits(17714i)), ~abs(u_input.b)), -vec2<i32>(countOneBits(u_input.b), reverseBits(u_input.b))));
    var var_4 = Struct_1(select(!(!select(false, true, false)), any(arg_0.b.xz), arg_0.a), vec4<bool>(true, true, true, true), !(true | !arg_1) | arg_0.b.x);
    return vec4<u32>(reverseBits(~(~4294967295u)), 4294967295u, ~var_1.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, ~_wgslsmith_add_u32(16565u, 44620u), ~(~u_input.c.x)), u_input.c.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_sub_vec4_u32(func_4(func_2(vec4<i32>(_wgslsmith_mod_i32(31817i, u_input.b), u_input.b, 26654i, -1i), ~0u), any(!arg_0.b.www)), select(select(min(vec4<u32>(u_input.a.x, 49173u, 52857u, u_input.c.x), vec4<u32>(1u, 0u, 0u, 42570u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 16755u, u_input.a.x), vec4<u32>(41885u, 16405u, 44029u, u_input.c.x)), !arg_1.b), vec4<u32>(abs(u_input.c.x), u_input.c.x, abs(u_input.c.x), ~u_input.c.x), !arg_3.x) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(83485u, u_input.a.x, 53027u, 47815u), vec4<u32>(u_input.c.x, 77603u, 38930u, u_input.a.x)), 37973u, ~18077u, 16813u) % vec4<u32>(32u)));
    var var_1 = vec2<i32>(u_input.b, _wgslsmith_mod_i32(abs(u_input.b), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-48485i, u_input.b, 0i, -1i) & vec4<i32>(7629i, u_input.b, u_input.b, u_input.b), select(vec4<i32>(u_input.b, -39202i, 0i, -31594i), vec4<i32>(0i, 5746i, u_input.b, u_input.b), arg_0.b)), u_input.b)));
    var var_2 = func_2(vec4<i32>(~35738i, _wgslsmith_clamp_i32((var_1.x >> (var_0.x % 32u)) & countOneBits(-68504i), _wgslsmith_mod_i32(20202i ^ var_1.x, u_input.b), -1i), _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-20015i, var_1.x), vec2<i32>(-19550i, var_1.x)), ~(~vec2<i32>(-32533i, -1i))), _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 23902i), vec2<i32>(u_input.b, var_1.x)), -firstLeadingBit(46518i))), ~_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(var_0.x, 47047u, countOneBits(0u), firstTrailingBit(65703u))));
    let var_3 = _wgslsmith_sub_vec3_u32(firstLeadingBit(~abs(~u_input.c)), var_0.zww);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -732f), _wgslsmith_f_op_f32(max(-640f, -220f)), _wgslsmith_f_op_f32(-arg_2)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(591f, arg_2, arg_2), vec3<f32>(-803f, 382f, -187f), arg_3)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, -106f, arg_2)))))));
    return !select(arg_0.a, arg_1.b.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, !vec4<bool>(any(vec3<bool>(true, false, false)), false, func_1(Struct_1(false, vec4<bool>(false, false, false, false), true), Struct_1(true, vec4<bool>(false, true, true, false), true), _wgslsmith_f_op_f32(-225f - -498f), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), any(vec4<bool>(true, true, true, true))), 53622i <= _wgslsmith_div_i32(min(50429i, reverseBits(216i)), abs(u_input.b) | 1i));
    let var_1 = Struct_1(var_0.b.x, !(!select(func_2(vec4<i32>(-2147483647i, u_input.b, u_input.b, -45414i), 398u).b, !var_0.b, var_0.b)), any(vec3<bool>(!(true && var_0.b.x), true, false)));
    var var_2 = Struct_1(var_1.c, vec4<bool>(!any(!var_0.b.zyy), true, var_1.c, var_0.a | var_1.a), true);
    let var_3 = func_2(vec4<i32>(u_input.b ^ u_input.b, 33810i, u_input.b, -7681i), ~(u_input.c.x >> (83414u % 32u)) | (u_input.c.x << (u_input.c.x % 32u)));
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(-1054f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -372f), 814f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(559f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(614f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(754f)), _wgslsmith_f_op_f32(abs(-1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(~max(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.xx), select(u_input.c.zz, vec2<u32>(14607u, 4294967295u), var_2.c)) & countOneBits(u_input.c.zz), vec3<u32>(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(reverseBits(4294967295u), ~u_input.c.x)), firstTrailingBit(~(~0u)), 1u | max(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(3322u, 0u), u_input.a))));
}

