struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(Struct_1(-27567i), vec4<u32>(40932u, 1u, 1u, 4294967295u), Struct_2(Struct_1(1i), Struct_1(0i), false, vec2<u32>(4294967295u, 26125u)), Struct_1(45332i), false), Struct_5(Struct_1(1i), vec4<u32>(1u, 28641u, 1u, 3960u), Struct_2(Struct_1(2374i), Struct_1(i32(-2147483648)), true, vec2<u32>(4294967295u, 60050u)), Struct_1(1i), false), Struct_5(Struct_1(74441i), vec4<u32>(60524u, 4294967295u, 0u, 6983u), Struct_2(Struct_1(-10276i), Struct_1(-26226i), false, vec2<u32>(32058u, 0u)), Struct_1(58900i), true), Struct_5(Struct_1(11759i), vec4<u32>(1u, 30611u, 13383u, 1u), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-27373i), false, vec2<u32>(1u, 91064u)), Struct_1(-3240i), true), Struct_5(Struct_1(i32(-2147483648)), vec4<u32>(43431u, 0u, 71747u, 8861u), Struct_2(Struct_1(-1i), Struct_1(36710i), true, vec2<u32>(4294967295u, 1u)), Struct_1(25713i), true), Struct_5(Struct_1(0i), vec4<u32>(1u, 1u, 57135u, 1u), Struct_2(Struct_1(17238i), Struct_1(0i), false, vec2<u32>(72270u, 20658u)), Struct_1(0i), false), Struct_5(Struct_1(0i), vec4<u32>(4671u, 4294967295u, 1u, 8562u), Struct_2(Struct_1(-14705i), Struct_1(1966i), true, vec2<u32>(4294967295u, 1u)), Struct_1(-1746i), true), Struct_5(Struct_1(1i), vec4<u32>(29148u, 49543u, 64470u, 4294967295u), Struct_2(Struct_1(1i), Struct_1(-1i), false, vec2<u32>(1u, 19155u)), Struct_1(-1i), true), Struct_5(Struct_1(31398i), vec4<u32>(1u, 0u, 12919u, 4294967295u), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-1441i), false, vec2<u32>(59773u, 24967u)), Struct_1(i32(-2147483648)), true), Struct_5(Struct_1(1i), vec4<u32>(23568u, 4294967295u, 45843u, 35336u), Struct_2(Struct_1(i32(-2147483648)), Struct_1(1i), true, vec2<u32>(41512u, 0u)), Struct_1(11968i), true), Struct_5(Struct_1(-32957i), vec4<u32>(15786u, 4294967295u, 33948u, 27208u), Struct_2(Struct_1(38294i), Struct_1(i32(-2147483648)), true, vec2<u32>(4294967295u, 48098u)), Struct_1(2147483647i), true), Struct_5(Struct_1(23983i), vec4<u32>(68861u, 20778u, 6154u, 91301u), Struct_2(Struct_1(4754i), Struct_1(1i), false, vec2<u32>(79124u, 4294967295u)), Struct_1(-2799i), true), Struct_5(Struct_1(-4740i), vec4<u32>(108594u, 29753u, 1u, 39349u), Struct_2(Struct_1(52223i), Struct_1(i32(-2147483648)), true, vec2<u32>(1u, 0u)), Struct_1(0i), true), Struct_5(Struct_1(30057i), vec4<u32>(1u, 15174u, 87152u, 0u), Struct_2(Struct_1(0i), Struct_1(43095i), true, vec2<u32>(1u, 4294967295u)), Struct_1(2147483647i), true), Struct_5(Struct_1(i32(-2147483648)), vec4<u32>(1u, 33944u, 1u, 1u), Struct_2(Struct_1(2147483647i), Struct_1(0i), false, vec2<u32>(1u, 26890u)), Struct_1(-14542i), true), Struct_5(Struct_1(-20096i), vec4<u32>(4294967295u, 1u, 4294967295u, 12836u), Struct_2(Struct_1(-15579i), Struct_1(-41444i), false, vec2<u32>(64175u, 65265u)), Struct_1(0i), true), Struct_5(Struct_1(12528i), vec4<u32>(0u, 7239u, 0u, 1u), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-1683i), true, vec2<u32>(4294967295u, 24213u)), Struct_1(1i), false), Struct_5(Struct_1(1i), vec4<u32>(9576u, 0u, 0u, 4294967295u), Struct_2(Struct_1(1i), Struct_1(1i), false, vec2<u32>(4294967295u, 68848u)), Struct_1(8421i), true), Struct_5(Struct_1(29851i), vec4<u32>(76865u, 0u, 4294967295u, 34995u), Struct_2(Struct_1(65078i), Struct_1(i32(-2147483648)), true, vec2<u32>(17689u, 31912u)), Struct_1(0i), false), Struct_5(Struct_1(-1i), vec4<u32>(61501u, 1u, 70946u, 24668u), Struct_2(Struct_1(2147483647i), Struct_1(-1i), false, vec2<u32>(4294967295u, 1u)), Struct_1(-1i), true), Struct_5(Struct_1(1i), vec4<u32>(58952u, 25935u, 72225u, 9904u), Struct_2(Struct_1(-6992i), Struct_1(1i), false, vec2<u32>(56815u, 1u)), Struct_1(-30993i), false), Struct_5(Struct_1(5784i), vec4<u32>(0u, 27518u, 9915u, 4294967295u), Struct_2(Struct_1(-28372i), Struct_1(i32(-2147483648)), true, vec2<u32>(4294967295u, 1u)), Struct_1(70886i), false), Struct_5(Struct_1(-1i), vec4<u32>(12714u, 0u, 35317u, 20694u), Struct_2(Struct_1(-1i), Struct_1(19363i), false, vec2<u32>(1u, 4294967295u)), Struct_1(28121i), false), Struct_5(Struct_1(-34131i), vec4<u32>(53948u, 85867u, 4294967295u, 41072u), Struct_2(Struct_1(-1i), Struct_1(45730i), false, vec2<u32>(0u, 45118u)), Struct_1(i32(-2147483648)), false), Struct_5(Struct_1(-68716i), vec4<u32>(1u, 44093u, 22989u, 1u), Struct_2(Struct_1(54867i), Struct_1(-9937i), true, vec2<u32>(0u, 30521u)), Struct_1(0i), true), Struct_5(Struct_1(24475i), vec4<u32>(4294967295u, 1u, 2476u, 1u), Struct_2(Struct_1(-11868i), Struct_1(i32(-2147483648)), false, vec2<u32>(4294967295u, 0u)), Struct_1(2147483647i), true), Struct_5(Struct_1(i32(-2147483648)), vec4<u32>(0u, 0u, 3368u, 0u), Struct_2(Struct_1(i32(-2147483648)), Struct_1(0i), false, vec2<u32>(4592u, 4294967295u)), Struct_1(25724i), true), Struct_5(Struct_1(-1i), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), Struct_2(Struct_1(2147483647i), Struct_1(1i), false, vec2<u32>(53901u, 1u)), Struct_1(0i), false), Struct_5(Struct_1(18368i), vec4<u32>(1u, 4294967295u, 38214u, 4294967295u), Struct_2(Struct_1(15580i), Struct_1(2147483647i), false, vec2<u32>(49916u, 41286u)), Struct_1(0i), true), Struct_5(Struct_1(33461i), vec4<u32>(79348u, 68653u, 67794u, 0u), Struct_2(Struct_1(-18915i), Struct_1(i32(-2147483648)), true, vec2<u32>(1u, 0u)), Struct_1(0i), false));

var<private> global2: Struct_1 = Struct_1(38516i);

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(26393i), Struct_1(-9103i), Struct_1(0i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(-28817i), Struct_1(i32(-2147483648)), Struct_1(32315i), Struct_1(0i), Struct_1(-14502i), Struct_1(2147483647i), Struct_1(-1i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = select(!((i32(-1i) * -59871i) <= select(~2147483647i, u_input.d, any(vec2<bool>(global0.x, global0.x)))), true, (((u_input.a | 4294967295u) == 0u) && global0.x) == true);
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(u_input.a, 12u)], Struct_1(u_input.b), true, min(~vec2<u32>(1u, u_input.a) ^ ~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(22639u, u_input.a)) << (vec2<u32>(abs(1u), reverseBits(1u)) % vec2<u32>(32u)));
    return ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, var_1.d.x, 67168u), vec4<u32>(71985u, u_input.a, 1u, 31729u) ^ vec4<u32>(1u, var_1.d.x, u_input.a, 0u))));
}

fn func_2() -> vec4<bool> {
    let var_0 = min(select(~vec4<u32>(u_input.a, 0u, u_input.a, 77105u) & vec4<u32>(1u, 984u, u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 15785u) << (vec4<u32>(25974u, u_input.a, 1u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 1u, 1u, 1u)), !select(vec4<bool>(global0.x, false, true, false), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(false, false, global0.x, global0.x))) ^ ((vec4<u32>(1346u, u_input.a, 0u, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)) ^ func_3()), reverseBits(vec4<u32>(u_input.a, 23296u, 9577u, abs(u_input.a)) | ~(~vec4<u32>(35605u, 88114u, u_input.a, u_input.a))));
    let var_1 = ~(~40631u);
    var var_2 = global0.x;
    let var_3 = _wgslsmith_div_u32(firstTrailingBit(var_1), min(16255u >> (~var_1 % 32u), 4294967295u));
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(min(-896f, -866f)), -1144f, _wgslsmith_f_op_f32(round(532f))))), global0.x);
    return select(select(vec4<bool>(select(var_0.x, var_1, var_4.b) == ~u_input.a, false, true, global0.x), vec4<bool>(false, any(vec2<bool>(true, true)), true, global2.a < u_input.b), true || var_4.b), select(!vec4<bool>(any(vec4<bool>(true, global0.x, true, false)), true, global0.x, !var_4.b), select(vec4<bool>(false, !global0.x, false, false), select(!vec4<bool>(false, global0.x, true, var_4.b), vec4<bool>(true, true, true, true), !vec4<bool>(var_4.b, false, true, var_4.b)), any(global0.zz)), !select(!vec4<bool>(false, var_4.b, var_4.b, var_4.b), vec4<bool>(global0.x, global0.x, global0.x, false), select(vec4<bool>(global0.x, var_4.b, global0.x, true), vec4<bool>(var_4.b, false, var_4.b, false), false))), vec4<bool>(var_4.b, !(select(-26045i, u_input.d, true) > (i32(-1i) * -7991i)), global0.x, firstTrailingBit(u_input.d & u_input.d) == (_wgslsmith_div_i32(global2.a, global2.a) << (reverseBits(var_1) % 32u))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_add_vec3_u32(abs(countOneBits(firstTrailingBit(vec3<u32>(23150u, u_input.a, 4294967295u) & vec3<u32>(1u, 1u, 24268u)))), abs(vec3<u32>(u_input.a, 1u, 45027u)));
    global1 = array<Struct_5, 30>();
    var var_1 = firstLeadingBit(~abs(~_wgslsmith_clamp_u32(var_0.x, u_input.a, u_input.a)));
    let var_2 = _wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, global2.a, 37113i), vec3<i32>(46883i, 23639i, global2.a)), 20909i, -1i) << (~(~vec3<u32>(var_0.x, 1u, var_0.x)) % vec3<u32>(32u)), select(vec3<i32>(-72760i, u_input.b, arg_1.x), vec3<i32>(arg_1.x, 0i, 1i), arg_0.x));
    global2 = global3[_wgslsmith_index_u32(4294967295u, 12u)];
    return true;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = 1u;
    global0 = !vec3<bool>(select(true, true || any(vec3<bool>(false, true, true)), func_4(func_2(), vec4<i32>(29736i, global2.a, global2.a, 1i))), global0.x, true);
    var var_1 = vec3<i32>(16491i, -(global2.a << (countOneBits(~30014u) % 32u)), ~arg_0.x);
    let var_2 = _wgslsmith_mod_vec2_i32(min(_wgslsmith_mult_vec2_i32(arg_0.zy, _wgslsmith_mult_vec2_i32(var_1.yx, var_1.xz << (vec2<u32>(var_0, 0u) % vec2<u32>(32u)))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i ^ global2.a), var_1.xz)), vec2<i32>(abs(~0i), -17842i | countOneBits(min(u_input.c, arg_0.x))));
    let var_3 = countOneBits(_wgslsmith_sub_vec4_u32((vec4<u32>(31134u, u_input.a, 1u, u_input.a) & max(vec4<u32>(var_0, 1u, var_0, var_0), vec4<u32>(var_0, 1u, var_0, 27492u))) ^ firstLeadingBit(~vec4<u32>(1u, 0u, 8971u, 1u)), vec4<u32>(countOneBits(u_input.a), 1u, var_0, ~53135u) ^ firstLeadingBit(vec4<u32>(1u, var_0, var_0, var_0))));
    return u_input.a << (firstLeadingBit(reverseBits(var_0)) % 32u);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>) -> StorageBuffer {
    global0 = !(!select(!(!vec3<bool>(false, arg_1.c, false)), func_2().ywx, true));
    global3 = array<Struct_1, 12>();
    global0 = !vec3<bool>(all(vec4<bool>(false, arg_1.c != global0.x, arg_1.c, !global0.x)), !func_4(select(vec4<bool>(false, true, false, arg_1.c), vec4<bool>(false, false, true, global0.x), vec4<bool>(global0.x, false, true, true)), vec4<i32>(u_input.b, arg_2.x, 32800i, u_input.e) >> (vec4<u32>(32798u, arg_1.d.x, 1534u, u_input.a) % vec4<u32>(32u))), !func_2().x);
    var var_0 = ~(~select(vec3<u32>(5939u, arg_0, 36872u) ^ vec3<u32>(arg_1.d.x, 9372u, u_input.a), reverseBits(vec3<u32>(u_input.a, arg_0, 0u)), func_2().yxy) | vec3<u32>(_wgslsmith_mod_u32(4294967295u, ~60719u), _wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_1.d.x, arg_0, arg_1.d.x), vec3<u32>(arg_1.d.x, 32350u, 21283u)), countOneBits(vec3<u32>(16901u, 1u, arg_1.d.x))), ~(~arg_0)));
    var var_1 = Struct_5(Struct_1(~(~u_input.b)), ~vec4<u32>(~(~arg_0), abs(46206u), var_0.x, 51u), Struct_2(Struct_1(-1i), arg_1.b, u_input.d >= _wgslsmith_clamp_i32(u_input.b, ~0i, arg_1.a.a), _wgslsmith_mult_vec2_u32(~arg_1.d, select(var_0.zz, vec2<u32>(37053u, arg_0), false)) ^ vec2<u32>(u_input.a << (arg_1.d.x % 32u), ~arg_1.d.x)), Struct_1(-8427i), !(arg_2.x >= ~u_input.b));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(369f, 516f, -428f)))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -709f, -466f)), vec3<f32>(-559f, 428f, -400f), vec3<bool>(true, true, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-720f, -1329f, 776f, -2236f), _wgslsmith_f_op_vec4_f32(vec4<f32>(385f, 1720f, -1783f, -919f) + vec4<f32>(2257f, 299f, -427f, 1024f)))))), global0.x);
    let x = u_input.a;
    s_output = func_5(u_input.a ^ ~4294967295u, Struct_2(Struct_1(max(-76398i, 1i >> (u_input.a % 32u))), global3[_wgslsmith_index_u32(select(u_input.a, func_1(abs(vec3<i32>(global2.a, 1i, 41466i))), global0.x && global0.x), 12u)], func_4(select(select(vec4<bool>(var_0.b, var_0.b, true, false), vec4<bool>(true, false, true, var_0.b), vec4<bool>(var_0.b, global0.x, global0.x, global0.x)), vec4<bool>(true, var_0.b, false, true), !vec4<bool>(true, var_0.b, global0.x, false)), reverseBits(vec4<i32>(0i, -18008i, u_input.e, global2.a)) ^ max(vec4<i32>(global2.a, 0i, global2.a, u_input.e), vec4<i32>(u_input.c, 1i, -1i, global2.a))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(4294967295u, u_input.a)) & vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_i32(~(firstTrailingBit(vec2<i32>(62013i, u_input.c)) | vec2<i32>(-16381i, 0i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, global2.a) << (countOneBits(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, -2147483647i), vec2<i32>(u_input.c, -25979i)))));
}

