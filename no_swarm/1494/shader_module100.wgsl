struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(70068u, 0u), vec2<u32>(45613u, 54432u), vec2<u32>(0u, 1u), vec2<u32>(38885u, 25003u), vec2<u32>(0u, 1u), vec2<u32>(20254u, 0u), vec2<u32>(4294967295u, 11511u), vec2<u32>(105583u, 4294967295u), vec2<u32>(34470u, 34436u), vec2<u32>(138767u, 4294967295u), vec2<u32>(43916u, 4294967295u), vec2<u32>(19075u, 4294967295u), vec2<u32>(4294967295u, 15081u), vec2<u32>(93895u, 0u), vec2<u32>(47998u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1u, 31111u), vec2<u32>(1u, 1u), vec2<u32>(24990u, 0u), vec2<u32>(13496u, 9697u), vec2<u32>(0u, 0u), vec2<u32>(28231u, 57011u), vec2<u32>(0u, 0u), vec2<u32>(27260u, 1u), vec2<u32>(0u, 113130u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), vec2<u32>(17785u, 1u), vec2<u32>(4294967295u, 9304u), vec2<u32>(8211u, 34635u));

var<private> global1: vec4<f32> = vec4<f32>(-230f, 503f, -1000f, -1270f);

var<private> global2: Struct_1;

var<private> global3: array<i32, 24> = array<i32, 24>(-1i, 23379i, 0i, 1i, -16144i, -17801i, 2147483647i, 39805i, -1i, 2147483647i, -5486i, -24410i, -1i, 0i, 40993i, i32(-2147483648), 76981i, 0i, 0i, i32(-2147483648), 2147483647i, -21032i, 2147483647i, -1i);

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(0u, vec4<i32>(50231i, -9751i, -1i, i32(-2147483648)), 37381u), Struct_1(1u, vec4<i32>(i32(-2147483648), 44851i, -5088i, -13761i), 1u), Struct_1(4294967295u, vec4<i32>(-1i, -4981i, 2147483647i, 0i), 1u), Struct_1(23920u, vec4<i32>(41691i, 1i, 30014i, -29773i), 71190u), Struct_1(0u, vec4<i32>(2147483647i, i32(-2147483648), 201i, 11030i), 1u), Struct_1(15338u, vec4<i32>(-34690i, 27816i, i32(-2147483648), -56131i), 52401u), Struct_1(1u, vec4<i32>(34096i, 1i, i32(-2147483648), 1i), 879u), Struct_1(0u, vec4<i32>(-84289i, 2147483647i, 0i, -35693i), 1512u), Struct_1(24591u, vec4<i32>(1i, 1i, -1i, 23313i), 4294967295u), Struct_1(0u, vec4<i32>(-11957i, 2147483647i, 255i, 69608i), 4294967295u), Struct_1(49622u, vec4<i32>(32781i, 7209i, 22617i, 2147483647i), 11762u), Struct_1(67179u, vec4<i32>(29394i, -25737i, 0i, i32(-2147483648)), 4294967295u), Struct_1(0u, vec4<i32>(i32(-2147483648), 31098i, 2147483647i, 1i), 4294967295u), Struct_1(70478u, vec4<i32>(39570i, 0i, i32(-2147483648), -41496i), 1u), Struct_1(17997u, vec4<i32>(-1i, -1i, 0i, -5326i), 12015u), Struct_1(13092u, vec4<i32>(-1i, 1i, 33143i, 1i), 0u), Struct_1(4294967295u, vec4<i32>(30859i, -40031i, 19767i, 23614i), 39149u), Struct_1(39077u, vec4<i32>(-12050i, 2147483647i, 1i, 0i), 19928u), Struct_1(0u, vec4<i32>(11664i, 45103i, 53774i, 1i), 0u), Struct_1(46401u, vec4<i32>(i32(-2147483648), 25502i, 17053i, 2147483647i), 59902u), Struct_1(4294967295u, vec4<i32>(2147483647i, 19518i, 0i, -7117i), 45689u), Struct_1(4294967295u, vec4<i32>(1i, 1i, 0i, 11850i), 0u), Struct_1(25813u, vec4<i32>(6131i, i32(-2147483648), 1i, 1i), 70442u), Struct_1(16317u, vec4<i32>(-1i, 0i, 0i, 28860i), 42966u));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<i32>) -> vec4<f32> {
    let var_0 = -(arg_2.c.b.xxx & _wgslsmith_div_vec3_i32(arg_2.c.b.zxx, global2.b.zxz));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.wxz - global1.wzx))))));
    global3 = array<i32, 24>();
    let var_2 = -1i;
    let var_3 = _wgslsmith_mod_vec2_u32(~countOneBits(~_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(arg_1.c, arg_2.e.x))), ~vec2<u32>(select(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, arg_1.d.x), arg_1.d.wzy), arg_2.d), ~(~4294967295u)));
    return arg_2.b;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(-336f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, global2.c), vec4<u32>(arg_2.a, global2.c, 62029u, 0u)), Struct_3(arg_2.b, 757f, 46074u, vec4<u32>(u_input.b.x, 32603u, 0u, 25048u)), Struct_2(global1.x, vec4<f32>(-1685f, 889f, -1000f, -2520f), arg_2, arg_0, vec3<u32>(arg_2.a, arg_2.a, arg_2.c)), arg_2.b)))), arg_2, !arg_0, ~vec3<u32>(1u, 16586u, ~u_input.b.x));
    let var_1 = var_0;
    global0 = array<vec2<u32>, 32>();
    var var_2 = !vec4<bool>(any(select(vec4<bool>(var_1.d, arg_0, false, false), vec4<bool>(var_1.d, var_0.d, false, arg_0), var_0.d)) | false, global1.x < -388f, !all(vec2<bool>(true, true)), true);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1f))))), var_0.a, 792f, -1041f);
    return ~1i;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(arg_3.c.b.x, global3[_wgslsmith_index_u32(0u, 24u)], global2.b.x, 2147483647i) >> ((vec4<u32>(global2.a, arg_3.c.c, 48054u, 1u) << (vec4<u32>(global2.c, u_input.b.x, arg_3.c.a, 21713u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~arg_3.c.b >> (vec4<u32>(~3081u, global2.a, abs(global2.a), _wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(510f))), u_input.b.x, _wgslsmith_div_vec4_u32(vec4<u32>(29674u, global2.c, _wgslsmith_add_u32(1u, u_input.b.x), 66170u), ~select(vec4<u32>(0u, 1u, 1u, 1825u), vec4<u32>(global2.a, arg_3.c.c, arg_0.a, arg_3.e.x), true) << (firstLeadingBit(reverseBits(vec4<u32>(arg_3.c.c, global2.a, arg_3.e.x, arg_3.c.c))) % vec4<u32>(32u))));
    global4 = array<Struct_1, 24>();
    let var_1 = ~global2.a;
    let var_2 = select(arg_3.c.b, _wgslsmith_sub_vec4_i32(arg_0.b, firstTrailingBit(global2.b)), true);
    global3 = array<i32, 24>();
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = -((41381i ^ global2.b.x) << ((~61957u & arg_3.x) % 32u));
    global3 = array<i32, 24>();
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.yy))) + vec2<f32>(arg_2.b, _wgslsmith_f_op_f32(f32(-1f) * -426f)))));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.b.x);
    return Struct_3(~(-vec4<i32>(25343i, ~u_input.a.x, global3[_wgslsmith_index_u32(11706u, 24u)] >> (arg_3.x % 32u), abs(u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-3043f, _wgslsmith_f_op_f32(arg_0.a + arg_2.b), arg_0.d))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-876f - global1.x))) + arg_0.b.x)), ~arg_1.c, vec4<u32>(~abs(1u), global2.a, ~42555u, 8123u));
}

fn func_1() -> Struct_3 {
    global3 = array<i32, 24>();
    let var_0 = !(!(!select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), false))));
    let var_1 = -u_input.a;
    return func_5(func_4(Struct_1(~13054u, vec4<i32>(var_1.x | global3[_wgslsmith_index_u32(global2.c, 24u)], func_2(var_0.x, u_input.b, Struct_1(1u, global2.b, 20650u)), 8908i & u_input.a.x, u_input.a.x), countOneBits(u_input.b.x)), vec4<bool>(var_0.x, var_0.x, (u_input.b.x << (0u % 32u)) <= global2.a, var_0.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), Struct_2(_wgslsmith_f_op_vec4_f32(func_3(~vec4<u32>(global2.c, 1u, u_input.b.x, 33005u), Struct_3(vec4<i32>(-2147483647i, -1i, 25630i, global2.b.x), 104f, global2.a, vec4<u32>(global2.a, global2.a, 0u, 55919u)), Struct_2(-1376f, vec4<f32>(global1.x, global1.x, -420f, global1.x), Struct_1(13661u, vec4<i32>(1036i, u_input.a.x, 1i, global3[_wgslsmith_index_u32(34159u, 24u)]), u_input.b.x), var_0.x, vec3<u32>(u_input.b.x, 36908u, 1u)), vec4<i32>(1i, u_input.a.x, u_input.a.x, -1i))).x, vec4<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), 243f, _wgslsmith_f_op_f32(-global1.x), global1.x), Struct_1(global2.c, global2.b ^ global2.b, u_input.b.x), all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)) & true, ~vec3<u32>(1u, u_input.b.x, global2.c))), global4[_wgslsmith_index_u32(~max(global2.a, firstLeadingBit(global2.c) << (1u % 32u)), 24u)], Struct_3(global2.b, _wgslsmith_f_op_f32(max(119f, -1000f)), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(1u, 32u)], ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(14185u, 4294967295u, 90074u), vec3<u32>(global2.a, 10223u, 4294967295u)), 32u)]), vec4<u32>(global2.a, u_input.b.x, 1u, countOneBits(u_input.b.x))), vec2<u32>(~49375u, ~global2.c << (select(~global2.c, ~1u, false) % 32u)));
}

fn func_6(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    global2 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(~(~1u), _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(arg_1.d, vec4<u32>(24201u, u_input.b.x, global2.a, 68677u)))), 4294967295u), arg_1.d.x | _wgslsmith_div_u32(~0u ^ func_1().d.x, ~_wgslsmith_mult_u32(arg_1.d.x, arg_0))), 24u)];
    var var_0 = u_input.a;
    var var_1 = vec3<bool>(!any(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(global2.b.zx, vec2<i32>(0i, -1i)), arg_1.a.ww) != -1i, false != any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true))));
    var var_2 = -772f;
    global4 = array<Struct_1, 24>();
    return func_4(Struct_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0, ~u_input.b.x, ~arg_0), ~_wgslsmith_mult_u32(80u, 0u)), -abs(select(arg_1.a, vec4<i32>(1i, -27698i, global3[_wgslsmith_index_u32(arg_1.c, 24u)], var_0.x), var_1.x)), abs(~_wgslsmith_div_u32(global2.a, arg_1.c))), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.x, false, false && func_4(global4[_wgslsmith_index_u32(31904u, 24u)], vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), Struct_2(global1.x, vec4<f32>(-591f, global1.x, 932f, arg_1.b), global4[_wgslsmith_index_u32(arg_0, 24u)], var_1.x, vec3<u32>(u_input.b.x, 4294967295u, global2.c))).d, var_1.x), select(select(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(false, true, var_1.x, var_1.x), true), select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(false, false, var_1.x, true), var_1.x), !vec4<bool>(true, false, true, var_1.x)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(true, true, true, false), var_1.x), !vec4<bool>(var_1.x, var_1.x, true, var_1.x)), vec4<bool>(true, true, true, true))), select(!(!(!vec4<bool>(true, var_1.x, var_1.x, true))), select(!select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false)), select(select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1.x), vec4<bool>(false, false, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, false)), var_1.x != !var_1.x), u_input.b.x >= 47899u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_div_f32(global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, arg_1.b, _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(-arg_1.b)))), global4[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(u_input.b.x, global2.c, u_input.b.x) | 0u), 24u)], -762f <= _wgslsmith_f_op_f32(global1.x + 1535f), vec3<u32>(func_4(Struct_1(3392u, global2.b, 53348u), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(true, false, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), func_4(Struct_1(arg_1.c, vec4<i32>(-1i, var_0.x, -1i, arg_1.a.x), u_input.b.x), vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(true, var_1.x, false, var_1.x), Struct_2(1558f, vec4<f32>(224f, -707f, arg_1.b, global1.x), global4[_wgslsmith_index_u32(104643u, 24u)], false, arg_1.d.yxw))).c.c, _wgslsmith_add_u32(1u, ~26189u), abs(global2.a) | firstTrailingBit(arg_1.d.x)))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 32>();
    let var_0 = func_6(firstTrailingBit(~u_input.b.x) >> (~max(~u_input.b.x, 4294967295u) % 32u), func_1());
    var var_1 = all(vec2<bool>(true, true));
    let var_2 = func_4(func_6(global2.c, Struct_3(max(-global2.b, var_0.b), global1.x, 4294967295u, ~(~vec4<u32>(global2.a, 0u, 1u, 4294967295u)))), select(select(vec4<bool>(all(vec4<bool>(false, false, false, false)), false, all(vec3<bool>(false, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))), !all(vec3<bool>(false, false, true))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(func_4(Struct_1(43958u, var_0.b, 0u), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), Struct_2(-941f, vec4<f32>(global1.x, -912f, global1.x, -579f), var_0, true, vec3<u32>(var_0.c, var_0.a, 1u))).d, true, true, select(true, true, false)), vec4<bool>(false, all(vec4<bool>(true, false, true, true)), global1.x < global1.x, true), vec4<bool>(true, true, true, any(vec3<bool>(true, true, true))))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), func_4(func_6(49963u, func_5(Struct_2(114f, vec4<f32>(1552f, global1.x, global1.x, global1.x), var_0, false, vec3<u32>(u_input.b.x, 0u, 69664u)), var_0, func_1(), max(vec2<u32>(37870u, global2.a), vec2<u32>(global2.c, var_0.a)))), vec4<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), true & (var_0.b.x >= var_0.b.x), false, !all(vec2<bool>(true, false))), vec4<bool>(!all(vec2<bool>(false, false)), false, true == (u_input.a.x <= 6543i), true), func_4(func_6(~18550u, func_5(Struct_2(global1.x, vec4<f32>(-891f, global1.x, global1.x, 982f), Struct_1(global2.a, vec4<i32>(0i, 66445i, global2.b.x, -10468i), var_0.c), false, vec3<u32>(global2.c, 53060u, u_input.b.x)), Struct_1(1u, vec4<i32>(global3[_wgslsmith_index_u32(115234u, 24u)], var_0.b.x, 8318i, global2.b.x), 67083u), Struct_3(global2.b, 1634f, u_input.b.x, vec4<u32>(7206u, 27089u, 3474u, 0u)), global0[_wgslsmith_index_u32(var_0.a, 32u)])), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), func_4(func_6(var_0.a, Struct_3(var_0.b, global1.x, 4294967295u, vec4<u32>(u_input.b.x, 65837u, 1u, 0u))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), Struct_2(-1210f, vec4<f32>(1767f, -1427f, global1.x, 1000f), Struct_1(global2.a, vec4<i32>(global2.b.x, 11000i, global2.b.x, u_input.a.x), 14909u), false, vec3<u32>(18120u, u_input.b.x, global2.c))))));
    let var_3 = !vec4<bool>(var_2.d, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, var_2.d, var_2.d), vec3<bool>(false, var_2.d, var_2.d), true))), any(vec3<bool>(true, true, true)), !any(vec4<bool>(false, var_2.d, var_2.d, false)));
    var var_4 = Struct_1(0u, vec4<i32>(var_2.c.b.x, countOneBits(-45000i), 18827i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a.x, -1i), vec3<i32>(global2.b.x, var_0.b.x, global2.b.x) >> (vec3<u32>(4294967295u, var_0.c, 0u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global3[_wgslsmith_index_u32(4294967295u, 24u)], 34768i) | vec3<i32>(23208i, u_input.a.x, 2147483647i), min(vec3<i32>(-1i, -31792i, var_0.b.x), vec3<i32>(-17359i, global2.b.x, -9774i)), -var_2.c.b.xxz))), ~abs(var_2.e.x));
    global1 = vec4<f32>(-1669f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3026f + 181f)), 535f, global1.x);
    let var_5 = ~_wgslsmith_add_u32(~var_0.c, var_0.a);
    global0 = array<vec2<u32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -global2.b.zzy, -1579f, -vec2<i32>(firstTrailingBit(-global2.b.x), 1i), -global2.b);
}

