struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 29>;

var<private> global2: vec2<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> vec2<i32> {
    var var_0 = arg_0;
    global1 = array<vec4<i32>, 29>();
    let var_1 = firstLeadingBit(~var_0.b.c.d.zyx >> (_wgslsmith_clamp_vec3_u32(u_input.a.xxy, ~(~arg_0.b.a.d.wwy), min(select(arg_0.e.a.d.xwy, arg_0.b.a.d.wyz, var_0.c.x), u_input.a.zwx)) % vec3<u32>(32u)));
    var var_2 = Struct_3(Struct_2(arg_0.b.c, vec3<i32>(firstTrailingBit(-2147483647i), ~arg_0.e.d.x, firstTrailingBit(-22726i)), Struct_1(u_input.a.wz, 1278f, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), var_0.e.c.c) << ((var_0.e.c.d.xz & vec2<u32>(20906u, var_1.x)) % vec2<u32>(32u)), arg_0.b.a.d, -(vec4<i32>(10518i, arg_1, arg_0.e.d.x, arg_1) >> (arg_0.b.a.d % vec4<u32>(32u)))), -(~vec2<i32>(13937i, 11361i)), arg_0.b.c.b), _wgslsmith_f_op_vec2_f32(floor(var_0.a)), var_0.d);
    let var_3 = var_0.e.a.d.zwx;
    return vec2<i32>(var_2.a.c.c.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 29u)], var_2.a.c.e), countOneBits(global1[_wgslsmith_index_u32(4294967295u, 29u)])), arg_1), 1i));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global2 = vec2<bool>(global2.x, true);
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0.c)))) + arg_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-358f, arg_0.c.x, arg_0.a.c.b))));
    var var_1 = abs(countOneBits(arg_0.a.b));
    return -2147483647i;
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    global1 = array<vec4<i32>, 29>();
    let var_0 = _wgslsmith_add_vec2_i32(min(_wgslsmith_clamp_vec2_i32(-func_2(Struct_4(arg_0.d.xy, arg_0.b, vec4<bool>(arg_0.c.x, arg_0.c.x, false, true), vec3<f32>(-118f, -415f, -1411f), Struct_2(Struct_1(vec2<u32>(arg_0.e.a.a.x, arg_0.e.c.d.x), arg_0.d.x, vec2<i32>(-45983i, 1i), vec4<u32>(0u, arg_0.b.c.d.x, 0u, 28455u), vec4<i32>(1i, arg_0.e.c.c.x, arg_0.b.d.x, 43475i)), arg_0.e.b, Struct_1(vec2<u32>(1u, 68212u), arg_0.a.x, vec2<i32>(2147483647i, arg_0.b.c.e.x), vec4<u32>(u_input.a.x, arg_0.b.c.a.x, 4294967295u, arg_0.b.c.a.x), vec4<i32>(arg_0.e.a.e.x, arg_0.e.a.c.x, arg_0.e.b.x, -2147483647i)), vec2<i32>(arg_0.b.a.c.x, arg_0.e.c.e.x), -2464f)), arg_0.e.d.x), vec2<i32>(arg_0.b.a.c.x, arg_0.b.b.x), vec2<i32>(arg_0.e.c.c.x, arg_0.b.d.x)), arg_0.b.c.c & ~reverseBits(vec2<i32>(arg_0.b.b.x, 5417i))), arg_0.b.c.e.yy);
    let var_1 = Struct_3(arg_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.d.xx))), arg_0.d);
    let var_2 = Struct_2(arg_0.b.a, (vec3<i32>(-1i) * -var_1.a.c.e.yxy) & vec3<i32>(_wgslsmith_clamp_i32(-1i, func_3(Struct_3(Struct_2(var_1.a.a, var_1.a.c.e.xwz, Struct_1(arg_0.b.a.a, arg_0.a.x, vec2<i32>(45844i, var_1.a.d.x), arg_0.b.c.d, vec4<i32>(-2147483647i, -13825i, var_0.x, arg_0.e.b.x)), vec2<i32>(0i, 87272i), 1000f), var_1.c.xx, arg_0.d)), firstTrailingBit(var_1.a.d.x)), -(~arg_0.b.b.x), arg_0.e.a.c.x), Struct_1(vec2<u32>(u_input.a.x, 0u) & ~_wgslsmith_clamp_vec2_u32(var_1.a.c.d.wy, vec2<u32>(arg_0.e.c.a.x, arg_0.e.a.d.x), vec2<u32>(1u, arg_0.e.a.a.x)), var_1.c.x, abs(var_1.a.a.e.zy << (~u_input.a.zx % vec2<u32>(32u))), reverseBits(arg_0.b.a.d), _wgslsmith_add_vec4_i32(vec4<i32>(-53820i & var_1.a.d.x, abs(var_0.x), -var_0.x, 1i), vec4<i32>(1i, arg_0.b.c.e.x, 33002i, min(var_1.a.b.x, var_1.a.d.x)))), vec2<i32>(0i, -(~0i)), 1970f);
    var var_3 = select(vec4<u32>(u_input.a.x | 22198u, arg_0.b.c.a.x, ~u_input.b, u_input.b), ~(vec4<u32>(u_input.b, u_input.b, 9382u, 36057u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.a.x, 22424u, 0u, arg_0.e.c.a.x), var_2.c.d)), vec4<bool>(_wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(var_2.a.d.x, var_2.c.a.x)) <= _wgslsmith_add_u32(arg_0.e.a.d.x, 1u), !global2.x, global2.x, any(arg_0.c) & false)) >> (vec4<u32>(~1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(var_1.a.c.a), var_1.a.a.a), ~firstLeadingBit(var_1.a.a.a.x)), arg_0.e.c.d.x, var_2.a.a.x) % vec4<u32>(32u));
    return var_1.a.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>) -> f32 {
    let var_0 = arg_2.x;
    let var_1 = vec2<bool>(!(countOneBits(arg_0.a.x) > reverseBits(49730u)), global2.x);
    global2 = !(!vec2<bool>(all(!vec3<bool>(true, var_1.x, var_1.x)), true));
    global2 = !select(vec2<bool>(-arg_0.e.x != firstLeadingBit(arg_0.c.x), (-13636i != arg_0.c.x) | true), select(var_1, !var_1, _wgslsmith_mult_i32(10615i, arg_0.c.x) <= _wgslsmith_dot_vec3_i32(arg_0.e.xyx, vec3<i32>(-1i, arg_1.a.b.x, arg_0.e.x))), select(var_1, vec2<bool>(false, var_1.x), true));
    global2 = select(select(var_1, !vec2<bool>(true, global2.x || true), any(vec3<bool>(true, all(vec4<bool>(var_1.x, var_1.x, true, false)), true))), var_1, !(!(0i != arg_0.e.x)) & global2.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x)));
}

fn func_5(arg_0: vec2<f32>, arg_1: bool) -> Struct_4 {
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(!global2.x, false), 4294967295u > (abs(74595u) << (u_input.a.x % 32u)));
    var var_1 = true;
    let var_2 = func_1(Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1277f, arg_0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -951f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2235f, arg_0.x))))), Struct_2(func_1(Struct_4(vec2<f32>(arg_0.x, arg_0.x), Struct_2(Struct_1(vec2<u32>(0u, u_input.a.x), arg_0.x, vec2<i32>(9062i, -2147483647i), u_input.a, vec4<i32>(13828i, -19902i, 20871i, 21077i)), vec3<i32>(71092i, -2147483647i, -1i), Struct_1(vec2<u32>(1u, u_input.a.x), -651f, vec2<i32>(-1i, -18921i), vec4<u32>(2149u, u_input.a.x, 16527u, u_input.a.x), global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec2<i32>(-17072i, 4140i), 574f), vec4<bool>(var_0.x, true, global2.x, true), vec3<f32>(arg_0.x, arg_0.x, 500f), Struct_2(Struct_1(u_input.a.yz, arg_0.x, vec2<i32>(16544i, -10880i), u_input.a, global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec3<i32>(2147483647i, -1i, -2147483647i), Struct_1(u_input.a.xw, 282f, vec2<i32>(-18458i, 4132i), u_input.a, global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec2<i32>(0i, -2147483647i), arg_0.x))), -func_1(Struct_4(vec2<f32>(895f, 652f), Struct_2(Struct_1(u_input.a.zz, arg_0.x, vec2<i32>(-1i, -42016i), u_input.a, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec3<i32>(2147483647i, 0i, 21583i), Struct_1(vec2<u32>(59466u, 4294967295u), arg_0.x, vec2<i32>(-1i, -20333i), u_input.a, global1[_wgslsmith_index_u32(15562u, 29u)]), vec2<i32>(1i, 1i), -779f), vec4<bool>(false, arg_1, true, var_0.x), vec3<f32>(arg_0.x, -610f, 586f), Struct_2(Struct_1(vec2<u32>(u_input.b, u_input.b), arg_0.x, vec2<i32>(2147483647i, 21776i), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.b), vec4<i32>(9661i, 2147483647i, 65741i, -2147483647i)), vec3<i32>(19732i, -2611i, -24331i), Struct_1(u_input.a.wz, arg_0.x, vec2<i32>(12774i, 1i), u_input.a, global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec2<i32>(-1i, 1i), -458f))).e.xyx, Struct_1(countOneBits(vec2<u32>(7333u, u_input.b)), _wgslsmith_f_op_f32(-arg_0.x), vec2<i32>(0i, 1i), u_input.a, min(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(0u, 29u)])), vec2<i32>(1i, i32(-1i) * -2147483647i), 1717f), select(!vec4<bool>(var_0.x, true, arg_1, var_0.x), vec4<bool>(select(global2.x, arg_1, true), var_0.x || var_0.x, any(vec3<bool>(true, false, var_0.x)), 4294967295u > u_input.b), any(select(vec3<bool>(false, var_0.x, arg_1), vec3<bool>(arg_1, true, global2.x), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-215f, arg_0.x, -234f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, arg_0.x, -686f), vec3<f32>(-152f, -1000f, -840f))))), Struct_2(func_1(Struct_4(vec2<f32>(-657f, 119f), Struct_2(Struct_1(u_input.a.yx, arg_0.x, vec2<i32>(58778i, 0i), vec4<u32>(17881u, u_input.a.x, 54897u, u_input.b), vec4<i32>(2147483647i, -2147483647i, 71086i, -6966i)), vec3<i32>(0i, -2147483647i, 23701i), Struct_1(u_input.a.wx, arg_0.x, vec2<i32>(-11367i, -2147483647i), vec4<u32>(u_input.a.x, u_input.b, 4294967295u, 89444u), vec4<i32>(-2147483647i, 4930i, 2147483647i, -6578i)), vec2<i32>(-1i, 2147483647i), -1746f), vec4<bool>(var_0.x, true, true, false), vec3<f32>(arg_0.x, -1149f, -1000f), Struct_2(Struct_1(u_input.a.yw, -422f, vec2<i32>(1659i, 0i), vec4<u32>(u_input.b, u_input.b, 51035u, u_input.b), global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<i32>(-1i, -46918i, 10386i), Struct_1(vec2<u32>(u_input.a.x, 0u), arg_0.x, vec2<i32>(-2147483647i, -24167i), u_input.a, vec4<i32>(2147483647i, -7160i, -18645i, 3105i)), vec2<i32>(0i, 3144i), -900f))), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(0i, 0i, -1i)), vec3<i32>(1i, 0i, 0i)), Struct_1(u_input.a.xx, arg_0.x, vec2<i32>(51818i, -39964i), abs(u_input.a), _wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(3903u, 29u)], vec4<i32>(0i, 0i, 2147483647i, -25508i), global1[_wgslsmith_index_u32(u_input.a.x, 29u)])), min(-vec2<i32>(24972i, 1i), select(vec2<i32>(-1i, 1i), vec2<i32>(-55504i, -12275i), true)), _wgslsmith_f_op_f32(select(1652f, -558f, select(arg_1, true, arg_1))))));
    let var_3 = select(!(!vec3<bool>(arg_1, true, true)), select(select(!select(vec3<bool>(var_0.x, arg_1, arg_1), vec3<bool>(global2.x, true, false), true), vec3<bool>(arg_1, true, any(vec4<bool>(true, false, false, var_0.x))), select(vec3<bool>(arg_1, false, false), vec3<bool>(var_0.x, arg_1, var_0.x), all(vec4<bool>(global2.x, true, false, global2.x)))), select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(all(vec3<bool>(false, arg_1, true)), true, !arg_1), var_0.x), any(!select(vec3<bool>(global2.x, arg_1, false), vec3<bool>(var_0.x, var_0.x, var_0.x), true))), select(select(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), var_0.x), !vec3<bool>(arg_1, global2.x, global2.x), !vec3<bool>(false, global2.x, true)), vec3<bool>(global2.x, true, var_0.x), vec3<bool>(!global2.x, false, true)), vec3<bool>(~var_2.a.x >= var_2.a.x, all(select(vec2<bool>(var_0.x, true), vec2<bool>(false, false), vec2<bool>(true, arg_1))), !(!global2.x)), vec3<bool>(global2.x, var_0.x, var_0.x)));
    var var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2450f, 998f), arg_0, vec2<bool>(false, false)))), vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(u_input.a.xy, var_2.b, vec2<i32>(2147483647i, var_2.e.x), vec4<u32>(0u, var_2.d.x, 4294967295u, u_input.a.x), var_2.e), Struct_3(Struct_2(var_2, vec3<i32>(1i, -1756i, 2147483647i), Struct_1(vec2<u32>(4294967295u, 13040u), 1529f, vec2<i32>(8598i, 0i), var_2.d, vec4<i32>(var_2.e.x, var_2.e.x, var_2.e.x, var_2.c.x)), vec2<i32>(-35365i, -3652i), -2561f), arg_0, vec3<f32>(1000f, arg_0.x, arg_0.x)), arg_0)), 1109f)))), Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(var_2.a, vec2<u32>(u_input.b, 44202u), vec2<u32>(0u, 0u)) >> (u_input.a.zw % vec2<u32>(32u)), _wgslsmith_f_op_f32(-arg_0.x), -vec2<i32>(1i, -1711i), select(select(vec4<u32>(1u, var_2.d.x, 0u, u_input.b), vec4<u32>(u_input.a.x, u_input.b, 1u, u_input.a.x), var_0.x), var_2.d, false), global1[_wgslsmith_index_u32(func_1(Struct_4(arg_0, Struct_2(var_2, vec3<i32>(1i, var_2.e.x, 33628i), var_2, var_2.e.xy, -712f), vec4<bool>(true, true, var_0.x, arg_1), vec3<f32>(arg_0.x, arg_0.x, var_2.b), Struct_2(var_2, var_2.e.wwz, Struct_1(u_input.a.ww, var_2.b, vec2<i32>(var_2.e.x, var_2.e.x), vec4<u32>(26030u, var_2.d.x, var_2.a.x, var_2.a.x), vec4<i32>(var_2.e.x, var_2.c.x, 7362i, -1i)), vec2<i32>(-2147483647i, 1i), var_2.b))).d.x, 29u)]), var_2.e.xyx, var_2, ~(~vec2<i32>(24488i, 1i)), var_2.b), vec4<bool>(true, var_3.x, false, var_0.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1114f)), _wgslsmith_f_op_f32(max(-1000f, 242f))))), _wgslsmith_div_f32(arg_0.x, var_2.b), var_2.b), Struct_2(func_1(Struct_4(vec2<f32>(936f, 1000f), Struct_2(var_2, vec3<i32>(var_2.c.x, var_2.c.x, var_2.c.x), var_2, var_2.e.wz, -464f), select(vec4<bool>(false, true, var_3.x, var_0.x), vec4<bool>(arg_1, var_0.x, true, true), vec4<bool>(false, var_0.x, false, false)), vec3<f32>(116f, arg_0.x, -1277f), Struct_2(Struct_1(u_input.a.xx, var_2.b, vec2<i32>(var_2.e.x, -43932i), var_2.d, vec4<i32>(0i, var_2.e.x, 10273i, var_2.e.x)), vec3<i32>(1i, var_2.e.x, var_2.c.x), var_2, vec2<i32>(-1i, var_2.e.x), -1000f))), vec3<i32>(~var_2.c.x, ~select(var_2.c.x, -2113i, false), -1i), var_2, vec2<i32>(-firstLeadingBit(var_2.e.x), -1i), _wgslsmith_f_op_f32(func_1(Struct_4(arg_0, Struct_2(Struct_1(vec2<u32>(u_input.b, 11262u), 445f, vec2<i32>(0i, 1i), u_input.a, vec4<i32>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.e.x)), var_2.e.zwz, Struct_1(vec2<u32>(1u, 0u), arg_0.x, var_2.c, vec4<u32>(var_2.d.x, u_input.b, var_2.a.x, 70834u), global1[_wgslsmith_index_u32(4294967295u, 29u)]), var_2.c, 567f), vec4<bool>(true, global2.x, var_0.x, global2.x), vec3<f32>(var_2.b, arg_0.x, 268f), Struct_2(Struct_1(u_input.a.zy, -535f, vec2<i32>(-58410i, var_2.c.x), vec4<u32>(var_2.a.x, u_input.b, var_2.a.x, 91207u), vec4<i32>(16553i, var_2.c.x, var_2.e.x, var_2.c.x)), vec3<i32>(88862i, 1i, -2147483647i), var_2, vec2<i32>(-1i, 42848i), -203f))).b + 760f)));
    return Struct_4(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(var_2.b, var_4.d.x)), var_4.b, vec4<bool>(all(select(var_3.zz, var_4.c.wx, select(global2.x, global2.x, global2.x))), any(vec2<bool>(false, !var_3.x)), any(vec3<bool>(true, true, true)), select(all(vec4<bool>(var_4.c.x, false, false, var_3.x)), var_0.x, global2.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1927f, -1557f, var_2.b) - var_4.d)) - var_4.d), var_4.d, all(vec4<bool>(true, -541f < var_2.b, true, select(arg_1, true, true))))), Struct_2(var_2, var_2.e.zxy, Struct_1(select(vec2<u32>(4294967295u, var_2.d.x), vec2<u32>(79720u, 121525u), select(vec2<bool>(false, arg_1), var_4.c.zw, var_4.c.yw)), 401f, -vec2<i32>(-22738i, var_4.b.d.x), ~vec4<u32>(33245u, u_input.a.x, var_2.a.x, u_input.a.x), var_2.e), vec2<i32>(0i >> ((var_4.b.c.a.x ^ var_2.a.x) % 32u), ~_wgslsmith_mult_i32(-2147483647i, var_2.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(557f * 1153f)), _wgslsmith_div_f32(-332f, _wgslsmith_f_op_f32(max(var_2.b, -128f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(u_input.b);
    global0 = ~1u;
    let var_0 = func_5(_wgslsmith_div_vec2_f32(vec2<f32>(-383f, _wgslsmith_f_op_f32(func_4(func_1(Struct_4(vec2<f32>(515f, -525f), Struct_2(Struct_1(u_input.a.yz, -261f, vec2<i32>(0i, 73787i), u_input.a, global1[_wgslsmith_index_u32(33254u, 29u)]), vec3<i32>(-46436i, -1i, -1i), Struct_1(u_input.a.yw, -1336f, vec2<i32>(-1807i, -7503i), u_input.a, vec4<i32>(1i, 26394i, 26481i, -2147483647i)), vec2<i32>(-33964i, 2147483647i), -1000f), vec4<bool>(false, global2.x, global2.x, global2.x), vec3<f32>(1000f, 860f, -494f), Struct_2(Struct_1(u_input.a.xz, -344f, vec2<i32>(1i, 16417i), vec4<u32>(0u, u_input.a.x, u_input.b, 0u), global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<i32>(-1i, 2147483647i, 1i), Struct_1(vec2<u32>(1u, u_input.b), 1421f, vec2<i32>(2147483647i, -21659i), vec4<u32>(1u, u_input.b, u_input.b, 0u), global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec2<i32>(0i, 18137i), 127f))), Struct_3(Struct_2(Struct_1(vec2<u32>(45546u, u_input.b), -1307f, vec2<i32>(-3694i, -16262i), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<i32>(-1i, 2147483647i, 1i, 48269i)), vec3<i32>(-17563i, 0i, -14736i), Struct_1(u_input.a.wy, -480f, vec2<i32>(50824i, -1i), u_input.a, vec4<i32>(39432i, -447i, -2147483647i, -2147483647i)), vec2<i32>(-2147483647i, -9896i), -1325f), vec2<f32>(328f, 252f), vec3<f32>(-1437f, -193f, -409f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(260f, -240f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-132f, 1244f) + vec2<f32>(216f, -1070f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(242f, 563f) - vec2<f32>(-499f, -2032f))))), true);
    var var_1 = true;
    let var_2 = Struct_3(var_0.e, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(687f, 1198f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), var_0.d.x)), select(any(!var_0.c), func_5(var_0.a, true).c.x, select(all(var_0.c.yx), true, false)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.x, -159f))), var_0.b.e, 329f));
    var var_3 = -var_2.a.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d.x))), var_2.b.x));
}

