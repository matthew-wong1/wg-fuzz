struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(0u, 6417u, 984u, 4294967295u), vec4<u32>(42813u, 37555u, 34310u, 25082u), vec4<u32>(4294967295u, 1u, 7342u, 74566u), vec4<u32>(1u, 4294967295u, 0u, 15543u), vec4<u32>(1u, 1u, 6556u, 53808u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<f32>) -> i32 {
    var var_0 = arg_1.x;
    global0 = array<vec4<u32>, 5>();
    let var_1 = Struct_1(u_input.b, arg_2.x);
    let var_2 = 17398u;
    global0 = array<vec4<u32>, 5>();
    return 1i;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = vec4<u32>(~(firstLeadingBit(4294967295u) >> (arg_1.a % 32u)), ~1u, u_input.b, u_input.b);
    let var_1 = countOneBits(_wgslsmith_add_i32(1i, 1i));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1046f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -158f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + _wgslsmith_f_op_f32(-510f * 898f))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), arg_0)))));
    global0 = array<vec4<u32>, 5>();
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~77874u), _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(arg_1.a, u_input.a), ~62722u), vec2<u32>(36373u, _wgslsmith_mult_u32(0u, u_input.b & var_0.x)))), 5u)];
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, var_2.x) - var_2.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = max(21957i, -(arg_0.x | select(-42830i, -arg_0.x, !arg_2)));
    let var_1 = Struct_2(!vec3<bool>((arg_3.a >= 0u) && arg_2, false, true), Struct_1(u_input.d, -1431f), _wgslsmith_clamp_vec3_i32((_wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_0.x, arg_0.x), arg_0) << (~vec3<u32>(56539u, 0u, u_input.c.x) % vec3<u32>(32u))) >> ((~u_input.c & vec3<u32>(1u, 0u, arg_3.a)) % vec3<u32>(32u)), arg_0, arg_0));
    let var_2 = Struct_2(vec3<bool>(true, arg_2, false), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(26053u, var_1.b.a) << ((u_input.a >> (var_1.b.a % 32u)) % 32u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a, 4294967295u, 11685u, 1u), vec4<u32>(0u, u_input.b, var_1.b.a, arg_3.a)) ^ 1u), 2500f), vec3<i32>(var_1.c.x, func_1(_wgslsmith_f_op_f32(select(-691f, 2344f, arg_2)) >= var_1.b.b, !(!vec4<bool>(arg_2, false, arg_2, arg_2)), arg_1), var_1.c.x));
    let var_3 = Struct_1(u_input.a, 1760f);
    let var_4 = var_1.c.zy;
    return ~(vec4<i32>(-1i, var_4.x ^ -31671i, ~firstLeadingBit(54690i), ~select(67047i, 63768i, false)) << (global0[_wgslsmith_index_u32(max(~reverseBits(55298u), 48431u), 5u)] % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<i32>) -> vec4<i32> {
    var var_0 = func_4(vec3<i32>(-2147483647i, abs(-2147483647i), _wgslsmith_mod_i32(min(~arg_0.c.x, arg_3.x ^ 17382i), _wgslsmith_add_i32(-44555i, -45052i << (arg_0.b.a % 32u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1570f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.b - -721f) * 2583f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(729f, Struct_1(4294967295u, arg_2.b.b))), _wgslsmith_f_op_f32(f32(-1f) * -862f)))), all(!arg_0.a.yy), Struct_1(_wgslsmith_div_u32(firstLeadingBit(u_input.b), countOneBits(arg_0.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2068f)))));
    let var_1 = Struct_1(_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_sub_u32(67512u, ~arg_2.b.a)), 25763u, abs(~(~u_input.a))), _wgslsmith_f_op_f32(arg_2.b.b - _wgslsmith_f_op_f32(arg_2.b.b - _wgslsmith_f_op_f32(1097f + arg_0.b.b))));
    var var_2 = arg_3 >> (u_input.c % vec3<u32>(32u));
    var_2 = vec3<i32>(func_1(false, !vec4<bool>(arg_2.a.x, all(arg_0.a.zx), any(vec3<bool>(arg_2.a.x, arg_2.a.x, arg_0.a.x)), !arg_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b.b, 566f))))))), 1i, max(-2147483647i, _wgslsmith_mult_i32(var_2.x << (arg_0.b.a % 32u), firstLeadingBit(1i))));
    let var_3 = arg_2;
    return vec4<i32>(abs(var_0.x), ~1i, func_1(true, vec4<bool>(any(vec4<bool>(var_3.a.x, arg_0.a.x, true, arg_2.a.x)), !(arg_1.x && false), all(select(arg_2.a, vec3<bool>(arg_1.x, var_3.a.x, arg_2.a.x), var_3.a)), any(!vec3<bool>(arg_0.a.x, arg_2.a.x, arg_1.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.b.b, 367f), vec2<f32>(-476f, 670f), arg_1.x)))))), arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-19964i, 32996i, 16385i, 0i)), vec4<i32>(22227i, 8333i, 1i, 6656i)) >> (vec4<u32>(~0u, u_input.b, ~36306u, u_input.c.x) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i << (u_input.c.x % 32u), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, 13290i), vec3<i32>(2147483647i, 2147483647i, 32648i)), -2147483647i) ^ vec4<i32>(~(-20953i), 1i, i32(-1i) * -44382i, ~(-8507i)), vec4<i32>(i32(-1i) * -64774i, 1i, func_1(true, vec4<bool>(true, true, false, true), vec2<f32>(196f, -1050f)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -10925i, 2147483647i), vec3<i32>(-4595i, -2147483647i, 30518i))) ^ func_2(Struct_2(vec3<bool>(false, true, true), Struct_1(u_input.a, 1300f), vec3<i32>(-1i, 8529i, 0i)), vec3<bool>(true, false, true), Struct_2(vec3<bool>(true, false, true), Struct_1(18233u, 1962f), vec3<i32>(-1i, 26755i, 17055i)), vec3<i32>(80070i, -20865i, 2147483647i)));
    global0 = array<vec4<u32>, 5>();
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) + _wgslsmith_f_op_f32(abs(-730f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-798f, -116f))), true);
    let var_2 = vec2<bool>(select(true, var_1.x, true), _wgslsmith_div_i32(i32(-1i) * -var_0.x, ~1i) <= firstTrailingBit(abs(i32(-1i) * -2147483647i)));
    var var_3 = Struct_2(!(!select(!vec3<bool>(true, var_1.x, var_2.x), !vec3<bool>(var_1.x, true, var_1.x), var_2.x)), Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(874f))) * -666f)), var_0.xwx);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(abs(~var_3.c), vec2<f32>(var_3.b.b, 1136f), var_3.a.x, Struct_1(1u, 1000f)).wwx, _wgslsmith_sub_vec3_u32(~(~(~u_input.c)), ~vec3<u32>(var_3.b.a ^ u_input.b, _wgslsmith_mod_u32(var_3.b.a, 1u), var_3.b.a | var_3.b.a)));
}

