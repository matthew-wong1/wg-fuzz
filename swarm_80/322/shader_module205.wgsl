struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(0i, -55989i, 11966i, -48792i, i32(-2147483648), 0i, -1i, -24604i, 0i, -42435i, 15683i, 1i, 30075i, -1i, 14900i, 67377i, 43531i, 1i, 0i, 9745i, 61244i, 0i, -1i, -3561i, -37590i, -1i);

var<private> global1: array<vec4<i32>, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global0 = array<i32, 26>();
    let var_0 = 1032f;
    var var_1 = Struct_1(true, firstTrailingBit(~(~1u)), ~_wgslsmith_add_u32(~126550u, firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 0u))));
    let var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(~1u, var_1.c, var_1.c, ~21865u)), (~vec4<u32>(4294967295u, 0u, 1u, var_1.c) >> (vec4<u32>(var_1.b, var_1.c, 0u, var_1.c) % vec4<u32>(32u))) >> (vec4<u32>(var_1.c, ~var_1.c, 27193u, ~var_1.b) % vec4<u32>(32u))), select(min(~min(vec4<u32>(var_1.c, 1580u, 66378u, 57271u), vec4<u32>(var_1.c, 24560u, var_1.b, 31580u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(6581u, var_1.c, 91237u, 4294967295u), vec4<u32>(4294967295u, 1u, var_1.b, 4294967295u))), min(~vec4<u32>(var_1.c, 0u, 36786u, var_1.c), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1446u, 4294967295u), vec2<u32>(53920u, 13487u)), var_1.c, reverseBits(var_1.b))), true));
    var_1 = Struct_1(all(vec3<bool>(var_1.a, true, all(vec2<bool>(false, true)))), max(min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 54708u) & vec2<u32>(var_2.x, var_1.b), ~var_2.yw), 70209u), ~82741u), var_2.x);
    return (true && (~abs(var_1.c) <= _wgslsmith_mult_u32(0u, 5351u))) & var_1.a;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_2(vec3<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), !func_3() & true, true), Struct_1(all(vec4<bool>(all(vec3<bool>(false, false, false)), any(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, true, true, true)), true)), _wgslsmith_div_u32(~1u, ~_wgslsmith_sub_u32(4294967295u, 32351u)), firstTrailingBit(55379u)), vec3<i32>(1i, -u_input.a, -1i), _wgslsmith_f_op_f32(select(533f, 494f, true)), false);
    var_0 = Struct_2(!var_0.a, Struct_1(!var_0.b.a, _wgslsmith_mult_u32(~firstTrailingBit(59704u), 15195u), 49501u), ~_wgslsmith_add_vec3_i32(vec3<i32>(27318i, ~u_input.a, global0[_wgslsmith_index_u32(103945u, 26u)] & -23274i), var_0.c), _wgslsmith_f_op_f32(-1925f - 1000f), any(!(!select(vec4<bool>(false, var_0.b.a, var_0.a.x, var_0.e), vec4<bool>(false, var_0.b.a, var_0.e, var_0.b.a), vec4<bool>(var_0.b.a, true, var_0.e, false)))));
    var var_1 = vec2<bool>(!(!any(!var_0.a)), !var_0.b.a);
    var var_2 = abs(0u & var_0.b.b);
    var var_3 = var_0.d;
    return select(vec4<bool>(_wgslsmith_dot_vec2_i32(~var_0.c.zz, vec2<i32>(var_0.c.x, -42927i)) >= (countOneBits(u_input.a) & max(-44983i, 2147483647i)), true, any(vec4<bool>(true, true, u_input.a >= global0[_wgslsmith_index_u32(1u, 26u)], !var_0.b.a)), !(!any(var_0.a.zx))), select(!(!vec4<bool>(false, var_0.e, var_1.x, var_1.x)), select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.c, 26u)] == 138i, true, true, !var_1.x), vec4<bool>(true, true, !var_0.e, true), true), false == (-1328f > _wgslsmith_f_op_f32(-var_0.d))), select(!vec4<bool>(!var_1.x, var_0.b.a && var_0.e, var_0.b.a, var_1.x), vec4<bool>(var_0.b.a, true, any(var_0.a.xy), false), vec4<bool>(false, func_3(), var_1.x, true)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> u32 {
    global1 = array<vec4<i32>, 18>();
    var var_0 = !select(select(!vec4<bool>(false, arg_3.b.a, arg_1.e, arg_3.e), vec4<bool>(all(vec4<bool>(true, arg_1.b.a, arg_0.a.a, arg_3.b.a)), false, true, true), arg_3.a.x), func_2(), select(!vec4<bool>(true, true, false, arg_0.a.a), vec4<bool>(true, arg_2, !arg_1.b.a, arg_2 || true), true));
    var var_1 = arg_0;
    let var_2 = ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.b, 44027u, 4294967295u) << (vec3<u32>(arg_3.b.c, var_1.a.c, 43912u) % vec3<u32>(32u)), ~vec3<u32>(1u, 23069u, var_1.a.b))) & _wgslsmith_clamp_vec3_u32(max(select(vec3<u32>(0u, arg_0.a.c, arg_0.a.b), reverseBits(vec3<u32>(24923u, 65997u, 30053u)), func_2().wxw), ~vec3<u32>(1u, arg_0.a.b, 0u) & vec3<u32>(4294967295u, arg_3.b.b, 42526u)), _wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(var_1.a.c, 82322u, arg_3.b.c)), ~countOneBits(vec3<u32>(0u, 68026u, arg_3.b.b)), ~vec3<u32>(4387u, arg_3.b.c, arg_3.b.b)), abs(reverseBits(max(vec3<u32>(1u, arg_3.b.c, arg_3.b.c), vec3<u32>(31882u, arg_1.b.c, arg_3.b.b)))));
    var_1 = arg_0;
    return var_1.a.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(true, ~(~arg_0.x), select(16488u, 79417u, !arg_2.x)));
    let var_1 = arg_0.yx;
    var var_2 = vec3<i32>(max(~arg_1.x, min(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 60897i, 29784i, 21248i), global1[_wgslsmith_index_u32(arg_0.x, 18u)]), vec4<i32>(arg_1.x, u_input.a, 0i, global0[_wgslsmith_index_u32(76762u, 26u)])), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, arg_1.x))), 51707i, ~(-u_input.a));
    var_2 = vec3<i32>(arg_1.x, -(~_wgslsmith_add_i32(~var_2.x, select(u_input.a, -2147483647i, var_0.a.a))), 27852i);
    global0 = array<i32, 26>();
    return Struct_1(true, arg_0.x, var_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 26>();
    let var_0 = Struct_3(func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(func_1(Struct_3(Struct_1(false, 4294967295u, 1u)), Struct_2(vec3<bool>(true, true, true), Struct_1(true, 2037u, 91656u), vec3<i32>(5921i, 60380i, u_input.a), 923f, true), true, Struct_2(vec3<bool>(true, false, false), Struct_1(true, 35182u, 18275u), vec3<i32>(u_input.a, -2147483647i, u_input.a), 1257f, true)), reverseBits(4294967295u), 57593u), vec3<u32>(_wgslsmith_mod_u32(109728u, 51385u), _wgslsmith_dot_vec4_u32(vec4<u32>(28411u, 34763u, 41060u, 1u), vec4<u32>(4294967295u, 11285u, 0u, 31213u)), ~5383u)), -countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -13574i, 12969i, global0[_wgslsmith_index_u32(0u, 26u)]), global1[_wgslsmith_index_u32(4294967295u, 18u)])), select(func_2(), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~(~(~vec4<u32>(1u, 0u, 25131u, 86946u))), ~countOneBits(vec4<u32>(var_0.a.c, 19067u, 1465u, 38767u) ^ vec4<u32>(4294967295u, 52080u, var_0.a.b, var_0.a.c))), vec4<u32>(~27800u, abs(var_0.a.c), 1u, var_0.a.b));
    global1 = array<vec4<i32>, 18>();
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    let var_2 = var_1.x;
    var var_3 = ~2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wy, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-2547f, -1240f)))) - _wgslsmith_f_op_f32(-1441f - _wgslsmith_f_op_f32(-328f - -1000f))), -397f)), vec4<u32>(1u ^ var_0.a.b, var_1.x ^ 1u, min(4294967295u, 15542u), firstLeadingBit(0u)), _wgslsmith_f_op_f32(abs(925f)));
}

