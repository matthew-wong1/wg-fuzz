struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(42720u, 70373u, 27932u), 23117i, vec3<f32>(332f, -1000f, -230f));

var<private> global1: Struct_1;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 1u, 57080u);

var<private> global3: vec3<f32> = vec3<f32>(-702f, -1000f, 277f);

var<private> global4: array<vec2<u32>, 18>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(-771f));
    global1 = arg_0.b;
    global0 = Struct_3(~vec3<u32>(_wgslsmith_dot_vec4_u32(arg_0.b.a, vec4<u32>(1u, global0.a.x, 110915u, global0.a.x)), global2.x, global1.a.x), arg_0.a.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1418f, global3.x, 228f) + vec3<f32>(-2590f, -1611f, -1413f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 117f, global0.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-530f, -1312f, var_0))))), vec3<f32>(global3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0)), 1000f)), global3.x))));
    global4 = array<vec2<u32>, 18>();
    let var_1 = Struct_4(Struct_2(arg_0.a, Struct_1(vec4<u32>(1u, min(global2.x, global0.a.x), ~1u, max(arg_0.b.a.x, 4294967295u)), -(~vec3<i32>(arg_0.b.b.x, global1.b.x, u_input.c.x)), select(arg_0.b.c, select(vec2<bool>(true, false), vec2<bool>(global1.c.x, arg_0.b.d), arg_0.b.c.x), !global1.c), all(vec2<bool>(false, global1.c.x)) || (u_input.c.x != -45635i)), ~abs(~1u)), arg_0, Struct_3(~vec3<u32>(0u, u_input.a.x, global1.a.x) & abs(_wgslsmith_add_vec3_u32(global0.a, global0.a)), 12126i, global0.c), Struct_2(vec3<i32>(~(~arg_0.a.x), ~(27065i ^ u_input.c.x), firstTrailingBit(-10949i)), arg_0.b, u_input.b.x), vec2<bool>(false, all(vec4<bool>(true, true, true, true))));
    return ~_wgslsmith_mod_u32(4294967295u, global1.a.x);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(global3.x, -256f, global1.c.x))) * global0.c.x))), -109f));
    global3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.c, global0.c))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(global0.c, vec3<f32>(global3.x, 1000f, global0.c.x)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1134f, _wgslsmith_f_op_f32(round(global0.c.x)), -1285f) + global0.c))));
    global1 = Struct_1(vec4<u32>(~reverseBits(1u), func_3(Struct_2(~vec3<i32>(-2147483647i, 40584i, global0.b), Struct_1(u_input.b, u_input.c.wyy, vec2<bool>(global1.d, global1.d), true), firstTrailingBit(0u))), ~(global1.a.x >> (global1.a.x % 32u)), ~(~u_input.a.x)), vec3<i32>(-global0.b, ~2147483647i, global1.b.x), !(!(!global1.c)), (~global0.a.x << (124011u % 32u)) != ~global0.a.x);
    var var_1 = select(max(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-u_input.c, ~u_input.c, vec4<i32>(1i, global1.b.x, -1i, 9081i) | vec4<i32>(-23510i, 34276i, global1.b.x, global1.b.x)), firstLeadingBit(-vec4<i32>(global0.b, global0.b, 2147483647i, global0.b))), u_input.c), ~select(u_input.c, _wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(global1.b.x, global0.b, u_input.c.x, global0.b), vec4<i32>(0i, 1i, 26747i, global0.b)) << (vec4<u32>(11176u, 46765u, global0.a.x, global0.a.x) % vec4<u32>(32u)), select(select(vec4<bool>(true, true, global1.c.x, global1.d), vec4<bool>(false, true, true, false), vec4<bool>(false, false, global1.c.x, global1.c.x)), select(vec4<bool>(false, global1.d, false, false), vec4<bool>(global1.d, global1.d, global1.d, false), global1.c.x), vec4<bool>(true, true, global1.c.x, global1.c.x))), select(!(!vec4<bool>(true, global1.c.x, global1.d, false)), select(select(!vec4<bool>(false, global1.c.x, false, global1.c.x), !vec4<bool>(global1.d, global1.d, true, global1.c.x), vec4<bool>(global1.d, global1.c.x, false, global1.d)), select(vec4<bool>(false, false, global1.c.x, global1.d), vec4<bool>(false, true, global1.c.x, global1.c.x), true), vec4<bool>(global1.c.x, !global1.d, true, false)), true));
    let var_2 = ~vec2<u32>(18599u, _wgslsmith_dot_vec2_u32(firstTrailingBit(abs(vec2<u32>(19984u, u_input.b.x))), _wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, u_input.a.x), vec2<u32>(4294967295u, 0u))));
    return false;
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_4) -> Struct_3 {
    global2 = ~_wgslsmith_sub_vec3_u32(min(u_input.b.zzw ^ ~arg_0, select(vec3<u32>(global2.x, arg_0.x, global0.a.x), firstLeadingBit(vec3<u32>(global1.a.x, 440u, arg_2.d.c)), !vec3<bool>(global1.c.x, true, true))), _wgslsmith_sub_vec3_u32(u_input.b.xxw, _wgslsmith_clamp_vec3_u32(u_input.b.xxz, vec3<u32>(1u, 27437u, 21603u), ~vec3<u32>(global0.a.x, 1u, 71307u))));
    let var_0 = Struct_4(Struct_2(~select(~vec3<i32>(20477i, 41925i, 51149i), ~vec3<i32>(u_input.c.x, arg_2.b.b.b.x, u_input.c.x), vec3<bool>(arg_2.e.x, false, arg_2.b.b.d)), arg_2.b.b, firstTrailingBit(~arg_2.a.b.a.x)), arg_2.d, Struct_3(select(global1.a.xyz, arg_2.d.b.a.zyz, arg_2.a.b.d & true) | min(abs(arg_0), abs(global1.a.xyz)), global1.b.x, global0.c), arg_2.d, arg_2.d.b.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1072f, var_0.c.c.x, 384f, var_0.c.c.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-474f, var_0.c.c.x, 255f, global0.c.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-320f, -210f, arg_2.c.c.x, 569f))), false & var_0.b.b.d))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(global0.c.x, var_0.c.c.x)), arg_2.c.c.x, _wgslsmith_f_op_f32(-var_0.c.c.x), _wgslsmith_f_op_f32(-arg_2.c.c.x)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2753f, var_0.c.c.x, global0.c.x, 529f)));
    global1 = Struct_1(abs(~select(vec4<u32>(14044u, var_0.c.a.x, 1825u, global1.a.x), vec4<u32>(111936u, global1.a.x, global2.x, arg_2.a.c), true) ^ var_0.a.b.a), abs(-global1.b), !vec2<bool>(true, false & all(vec4<bool>(arg_2.a.b.d, true, true, true))), any(vec4<bool>(arg_2.a.b.d, true, true, arg_2.a.b.c.x)));
    var var_2 = Struct_2(-max(-var_0.b.a, -vec3<i32>(-2665i, global0.b, 34760i)) >> (global0.a % vec3<u32>(32u)), arg_2.d.b, ~0u);
    return var_0.c;
}

fn func_1() -> vec4<u32> {
    global4 = array<vec2<u32>, 18>();
    global0 = func_4(global0.a, func_2(), Struct_4(Struct_2(global1.b, Struct_1(global1.a | vec4<u32>(global2.x, 25060u, global1.a.x, 1u), vec3<i32>(5863i, -2147483647i, global0.b) & vec3<i32>(30334i, u_input.c.x, 1i), vec2<bool>(true, true), global1.c.x), ~1u), Struct_2(-vec3<i32>(1i, 37216i, -1i), Struct_1(~u_input.b, vec3<i32>(u_input.c.x, 9661i, global0.b) ^ global1.b, global1.c, !global1.c.x), global1.a.x), Struct_3(~u_input.a, global1.b.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(global0.c))))), Struct_2(vec3<i32>(countOneBits(-1i), -global0.b, abs(global0.b)), Struct_1(vec4<u32>(1u, u_input.b.x, global0.a.x, 22084u), u_input.c.wzz, vec2<bool>(true, true), any(vec2<bool>(global1.d, global1.c.x))), _wgslsmith_clamp_u32(~global0.a.x, 1u, global2.x)), select(vec2<bool>(global1.c.x, any(global1.c)), global1.c, vec2<bool>(global1.d && true, !global1.c.x))));
    var var_0 = ~(-u_input.c);
    let var_1 = true;
    global0 = Struct_3(vec3<u32>(abs(~firstLeadingBit(4294967295u)), 8335u, global0.a.x), 66967i, _wgslsmith_f_op_vec3_f32(-func_4(~global1.a.yyz, ~global0.a.x <= _wgslsmith_sub_u32(9953u, u_input.b.x), Struct_4(Struct_2(global1.b, Struct_1(vec4<u32>(global2.x, global2.x, u_input.b.x, 1u), vec3<i32>(1i, 2147483647i, u_input.c.x), global1.c, true), u_input.a.x), Struct_2(vec3<i32>(global0.b, 8991i, u_input.c.x), Struct_1(global1.a, vec3<i32>(-540i, -2147483647i, 2147483647i), vec2<bool>(false, true), var_1), 1u), func_4(vec3<u32>(global1.a.x, global1.a.x, global2.x), true, Struct_4(Struct_2(u_input.c.wzx, Struct_1(vec4<u32>(24193u, 39694u, global2.x, global1.a.x), global1.b, global1.c, global1.c.x), global2.x), Struct_2(var_0.zyx, Struct_1(vec4<u32>(592u, u_input.b.x, global1.a.x, global1.a.x), var_0.zzx, vec2<bool>(var_1, global1.c.x), false), 0u), Struct_3(vec3<u32>(global2.x, global1.a.x, global2.x), var_0.x, vec3<f32>(global3.x, 1677f, global3.x)), Struct_2(vec3<i32>(43521i, var_0.x, 41292i), Struct_1(vec4<u32>(global0.a.x, 0u, 28423u, 26562u), vec3<i32>(u_input.c.x, u_input.c.x, global1.b.x), vec2<bool>(false, var_1), false), global1.a.x), global1.c)), Struct_2(vec3<i32>(25324i, 1i, u_input.c.x), Struct_1(vec4<u32>(26013u, global1.a.x, global1.a.x, 1u), global1.b, global1.c, var_1), 18051u), select(vec2<bool>(var_1, true), vec2<bool>(true, false), false))).c));
    return ~vec4<u32>(77226u, 1u, ~(~global2.x), 4613u) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(select(global2.x, 67865u, true), select(5724u, global1.a.x, var_1), _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(24662u, 18u)], vec2<u32>(global1.a.x, 1u)), global0.a.x << (4294967295u % 32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1.a.x, 41987u, 80257u), vec4<u32>(1519u, 4786u, 1u, global1.a.x))), u_input.b);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = func_4(vec3<u32>(min(_wgslsmith_clamp_u32(global1.a.x, u_input.a.x, 4294967295u), arg_0.a.x) >> (global0.a.x % 32u), abs(func_4(_wgslsmith_add_vec3_u32(u_input.a, global1.a.ywy), false || global1.c.x, Struct_4(Struct_2(vec3<i32>(0i, 2187i, u_input.c.x), arg_0, 4294967295u), Struct_2(arg_0.b, arg_0, 35054u), Struct_3(u_input.a, global1.b.x, vec3<f32>(-865f, -1000f, global3.x)), Struct_2(global1.b, Struct_1(global1.a, u_input.c.zxx, vec2<bool>(false, false), true), 1u), arg_0.c)).a.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(func_4(vec3<u32>(4294967295u, arg_0.a.x, 48733u), arg_0.d, Struct_4(Struct_2(vec3<i32>(0i, global0.b, 2147483647i), Struct_1(vec4<u32>(global2.x, u_input.b.x, 45167u, global0.a.x), vec3<i32>(4870i, -1i, -19784i), vec2<bool>(global1.c.x, arg_0.d), global1.c.x), global0.a.x), Struct_2(vec3<i32>(28010i, global1.b.x, -71724i), Struct_1(vec4<u32>(1u, 0u, u_input.a.x, 4294967295u), u_input.c.yxw, arg_0.c, true), global0.a.x), Struct_3(global1.a.wxx, u_input.c.x, vec3<f32>(1156f, -256f, global0.c.x)), Struct_2(vec3<i32>(-35362i, 1i, global0.b), Struct_1(vec4<u32>(u_input.b.x, 50342u, 14767u, global0.a.x), vec3<i32>(2147483647i, -73877i, 37003i), arg_0.c, false), arg_0.a.x), vec2<bool>(false, true))).a, global0.a), abs(4294967295u))), all(select(select(!vec3<bool>(true, global1.d, false), vec3<bool>(false, false, arg_0.d), vec3<bool>(global1.c.x, true, global1.d)), select(!vec3<bool>(true, true, global1.c.x), !vec3<bool>(true, arg_0.c.x, global1.c.x), any(vec2<bool>(false, true))), select(vec3<bool>(global1.d, true, arg_0.c.x), select(vec3<bool>(true, true, false), vec3<bool>(true, true, arg_0.d), arg_0.d), vec3<bool>(global1.d, global1.d, global1.c.x)))), Struct_4(Struct_2(countOneBits(select(vec3<i32>(-18253i, -13425i, -1i), vec3<i32>(global0.b, -2147483647i, arg_0.b.x), vec3<bool>(arg_0.c.x, global1.c.x, global1.d))), Struct_1(~arg_0.a, ~u_input.c.xyy, select(vec2<bool>(true, arg_0.c.x), global1.c, global1.c), global1.d), ~(~arg_0.a.x)), Struct_2(u_input.c.yyx, arg_0, ~(~42916u)), Struct_3(firstTrailingBit(vec3<u32>(0u, global1.a.x, 124024u)), 1i, vec3<f32>(-1246f, _wgslsmith_div_f32(915f, global3.x), _wgslsmith_f_op_f32(-global3.x))), Struct_2(arg_0.b, arg_0, ~firstTrailingBit(4294967295u)), vec2<bool>(false, any(select(vec4<bool>(arg_0.d, false, true, global1.d), vec4<bool>(true, global1.c.x, arg_0.c.x, true), true)))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2269f - global3.x)));
    global2 = vec3<u32>(4294967295u, _wgslsmith_mod_u32(global1.a.x, ~max(arg_0.a.x, global2.x)), u_input.b.x) >> (global1.a.xzy % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-541f * -1255f));
    global1 = arg_0;
    return Struct_1(~vec4<u32>(arg_0.a.x, abs(global1.a.x), global1.a.x, u_input.b.x), vec3<i32>(global1.b.x, _wgslsmith_mult_i32(~(-global1.b.x), ~firstTrailingBit(2147483647i)), ~_wgslsmith_div_i32(23211i, ~0i)), select(!select(arg_0.c, !global1.c, !global1.c.x), global1.c, vec2<bool>(var_1 == _wgslsmith_f_op_f32(global3.x * var_1), false)), !(!global1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<i32>(i32(-1i) * -2147483647i, min(24131i, 2147483647i), _wgslsmith_div_i32(-144i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), u_input.c.xz))) >> (vec3<u32>(global0.a.x, 0u, firstTrailingBit(global0.a.x)) % vec3<u32>(32u)), func_5(Struct_1(func_1(), firstTrailingBit(vec3<i32>(global0.b, global0.b, -16440i)), vec2<bool>(global1.c.x, global1.c.x), global1.d || global1.d)), ~55517u);
    global2 = func_1().wyw;
    global4 = array<vec2<u32>, 18>();
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(global0.b, -2147483647i), -countOneBits(_wgslsmith_add_i32(2147483647i, min(global1.b.x, global1.b.x))));
    var var_2 = global3.x;
    global2 = func_1().xyx;
    let var_3 = ~abs(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-3430i, 2147483647i, global1.b.x)), vec3<i32>(-16558i, -global1.b.x, i32(-1i) * -1950i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1158f)), -u_input.c.xxz, 762f, _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(u_input.a.x, global2.x), _wgslsmith_mod_u32(~global0.a.x, 7157u | global1.a.x), _wgslsmith_clamp_u32(global0.a.x, firstLeadingBit(1u), firstTrailingBit(var_0.c))), var_0.b.a.wzw), _wgslsmith_f_op_f32(step(-1872f, -981f)));
}

