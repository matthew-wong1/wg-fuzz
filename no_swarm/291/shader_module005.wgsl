struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3>;

var<private> global1: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(2172i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(1271i, -51574i), vec2<i32>(18522i, 44254i), vec2<i32>(23405i, -1i), vec2<i32>(0i, 40119i), vec2<i32>(-12922i, 19002i), vec2<i32>(15193i, -1i), vec2<i32>(2147483647i, -24665i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-12996i, i32(-2147483648)), vec2<i32>(54146i, 2147483647i), vec2<i32>(-20925i, -17766i), vec2<i32>(0i, -30684i), vec2<i32>(-33367i, 0i), vec2<i32>(33932i, 0i));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = false;
    var var_1 = ~37259u;
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, arg_0.b.x), vec2<u32>(27837u, arg_1.a.x)), 13842u), 77333u, 50825u, arg_0.a.a.x), vec4<u32>(~6453u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_1.a, vec2<u32>(arg_1.a.x, 1u)), u_input.a & min(45245u, 0u)), u_input.a, 1u));
    let var_3 = select(!vec3<bool>(!var_0 || true, all(vec2<bool>(var_0, true)), any(vec3<bool>(true, var_0, true))), !vec3<bool>(!any(vec3<bool>(false, var_0, var_0)), all(global1[_wgslsmith_index_u32(var_2.x, 10u)]) && (arg_0.c.x > arg_0.c.x), all(select(vec2<bool>(false, false), global1[_wgslsmith_index_u32(var_2.x, 10u)], var_0))), vec3<bool>(true, any(select(!vec2<bool>(var_0, var_0), global1[_wgslsmith_index_u32(~1u, 10u)], global1[_wgslsmith_index_u32(reverseBits(var_2.x), 10u)])), true));
    global2 = array<vec2<i32>, 16>();
    return arg_0.c.x;
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec2<u32>(u_input.a, 68749u)), vec4<u32>(1u, 16802u, 40445u, 1u), vec4<f32>(-1871f, -1697f, -748f, 1000f), vec4<f32>(663f, 1351f, 842f, -872f)), Struct_1(vec2<u32>(u_input.a, u_input.a)))))))));
    let var_1 = -1556f;
    var var_2 = !vec4<bool>(true | (1u > u_input.a), any(vec3<bool>(true, true, true)) || all(vec2<bool>(true, false)), !(firstLeadingBit(-1i) > select(-27942i, 7664i, true)), true);
    global2 = array<vec2<i32>, 16>();
    var var_3 = Struct_2(Struct_1(vec2<u32>(u_input.a, 4294967295u)), ~_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 4737u)), vec4<u32>(30292u, 37101u, 4294967295u, 1u) & vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))), _wgslsmith_div_vec4_f32(vec4<f32>(-126f, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec2<u32>(0u, 1u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 108117u), vec4<f32>(var_1, 1702f, var_1, var_1), vec4<f32>(var_1, var_1, 488f, 101f)), Struct_1(vec2<u32>(u_input.a, u_input.a)))), var_1, _wgslsmith_f_op_f32(381f + -303f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -631f, var_1, -178f) + vec4<f32>(var_1, var_1, var_1, -622f))))), vec4<f32>(var_1, _wgslsmith_f_op_f32(ceil(1f)), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))));
    return Struct_2(var_3.a, select(reverseBits(var_3.b), vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(0u), _wgslsmith_div_u32(u_input.a, u_input.a)), countOneBits(~var_3.a.a.x), _wgslsmith_mod_u32(~1u, 64055u), 57829u), vec4<bool>(false, all(select(global1[_wgslsmith_index_u32(27941u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], vec2<bool>(false, var_2.x))), var_2.x, all(vec3<bool>(false, var_2.x, true)))), _wgslsmith_f_op_vec4_f32(var_3.c + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.c)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.x, 2867f, var_1, 1279f)) + vec4<f32>(357f, 2893f, -212f, 601f)))), var_3.d);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.d.x)) * _wgslsmith_f_op_f32(ceil(1f))))), _wgslsmith_f_op_f32(-281f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.c.x)) - 532f)), _wgslsmith_f_op_f32(abs(-841f)));
    let var_1 = all(arg_0);
    var var_2 = global0[_wgslsmith_index_u32(~(max(4294967295u, ~(~u_input.a)) << (firstTrailingBit(u_input.a) % 32u)), 3u)];
    global1 = array<vec2<bool>, 10>();
    var var_3 = arg_3;
    return func_2(abs(u_input.b.x << (var_2.x % 32u)) >> (arg_3.b.x % 32u), ~arg_1).a;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_2(func_4(select(select(!vec3<bool>(var_0, var_0, false), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, true)), select(vec3<bool>(var_0, true, var_0), select(vec3<bool>(true, false, false), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, true, true)), vec3<bool>(false, false, false)), vec3<bool>(all(global1[_wgslsmith_index_u32(u_input.a, 10u)]), true, !var_0)), _wgslsmith_sub_i32(i32(-1i) * -45722i, ~(-u_input.b.x)), max(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, -vec4<i32>(u_input.b.x, arg_1.x, arg_1.x, u_input.b.x)), vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, 24559i), min(30593i, arg_1.x), -u_input.b.x, -1i)), func_2(arg_1.x, abs(-3658i & u_input.b.x))), vec4<u32>(_wgslsmith_sub_u32(u_input.a, min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 36603u, u_input.a), global0[_wgslsmith_index_u32(1u, 3u)]), firstLeadingBit(11375u))), ~0u, abs(_wgslsmith_clamp_u32(22112u, 46809u, 4294967295u)) & countOneBits(_wgslsmith_div_u32(4984u, u_input.a)), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-763f, arg_0.x, _wgslsmith_f_op_f32(trunc(522f)), -495f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1216f, 1000f, 353f, arg_0.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-747f * arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1628f)))))));
    global0 = array<vec3<u32>, 3>();
    global2 = array<vec2<i32>, 16>();
    var var_2 = select(select(u_input.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.b.x, 1i) ^ (u_input.b.xwy << (vec3<u32>(var_1.a.a.x, 4294967295u, var_1.a.a.x) % vec3<u32>(32u))), select(~u_input.b.zzw, u_input.b.zxx, select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, var_0), false))), !all(select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(var_0, true, false, var_0), vec4<bool>(true, false, true, var_0)))), _wgslsmith_add_i32(2147483647i, ~_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_1.x, -19151i), ~6530i)), true);
    return var_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = !global1[_wgslsmith_index_u32(arg_1, 10u)];
    global0 = array<vec3<u32>, 3>();
    var var_1 = func_4(!(!(!vec3<bool>(false, true, var_0.x))), 0i, firstTrailingBit(-u_input.b), func_2(6887i, min(u_input.b.x, u_input.b.x) & firstLeadingBit(u_input.b.x)));
    var_1 = Struct_1(func_4(vec3<bool>(all(!var_0), false, !var_0.x), 1i ^ (u_input.b.x | u_input.b.x), u_input.b, func_2(0i, u_input.b.x >> (abs(12597u) % 32u))).a);
    let var_2 = ~2147483647i;
    return _wgslsmith_f_op_f32(-1000f + 1097f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 16>();
    let var_0 = ~vec2<u32>(u_input.a, u_input.a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1189f + _wgslsmith_f_op_f32(f32(-1f) * -296f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1112f - -304f))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(323f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(841f, 1250f, 552f)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), global2[_wgslsmith_index_u32(0u, 16u)])), 1u)) * -1326f));
    global2 = array<vec2<i32>, 16>();
    var var_2 = func_2(min(~u_input.b.x, u_input.b.x), ~(-abs(-u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(u_input.b.x, ~37015i, min(~u_input.b.x, 1i))), var_2.b, max(-vec4<i32>(reverseBits(u_input.b.x), u_input.b.x, -1i, firstTrailingBit(u_input.b.x)), vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-32820i, 15517i, u_input.b.x, 2147483647i))), _wgslsmith_mult_i32(-1i, -33641i), reverseBits(u_input.b.x & -10972i), -26452i)), u_input.b.x);
}

