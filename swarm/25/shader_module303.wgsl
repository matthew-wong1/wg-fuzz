struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(31043u, 4294967295u, 4294967295u, 27887u), 743f, vec2<bool>(false, false), -8864i);

var<private> global1: Struct_2;

var<private> global2: i32;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<u32>(21284u, 1u, 0u, 13638u), 473f, vec2<bool>(true, false), 0i), Struct_1(vec4<u32>(0u, 90414u, 1u, 4294967295u), 1187f, vec2<bool>(false, true), 47485i), Struct_1(vec4<u32>(61719u, 10054u, 83488u, 1u), -462f, vec2<bool>(false, false), i32(-2147483648)), Struct_1(vec4<u32>(70882u, 12452u, 43372u, 1u), -559f, vec2<bool>(false, false), -1i), Struct_1(vec4<u32>(40930u, 4294967295u, 75015u, 0u), -1753f, vec2<bool>(false, true), -21082i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), 505f, vec2<bool>(true, false), 2147483647i), Struct_1(vec4<u32>(1u, 1u, 90970u, 0u), 195f, vec2<bool>(false, false), -40423i), Struct_1(vec4<u32>(1u, 855u, 1u, 8383u), -759f, vec2<bool>(false, true), 1i), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), 901f, vec2<bool>(true, false), 1i), Struct_1(vec4<u32>(1u, 7612u, 0u, 46627u), -1000f, vec2<bool>(false, true), 27927i), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 66806u), -1000f, vec2<bool>(false, true), -44911i), Struct_1(vec4<u32>(1u, 50832u, 4294967295u, 4294967295u), -547f, vec2<bool>(true, false), i32(-2147483648)));

var<private> global4: array<vec3<u32>, 6>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.a.x | ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global0.a.x, u_input.b, u_input.b) >> (global0.a % vec4<u32>(32u)), max(global0.a, vec4<u32>(1u, 56493u, 4294967295u, u_input.b))), _wgslsmith_sub_u32(0u, ~(~global1.b.a.x))), 12u)];
    let var_1 = (all(global1.a) & true) & false;
    let var_2 = vec3<u32>(global1.b.a.x, _wgslsmith_mod_u32(u_input.b ^ u_input.b, select(global0.a.x, _wgslsmith_dot_vec3_u32(var_0.a.zyw, vec3<u32>(global1.b.a.x, global0.a.x, u_input.b)), !global0.c.x)), (1u & _wgslsmith_clamp_u32(1u, 4294967295u, ~u_input.b)) >> (max(~u_input.b << (_wgslsmith_mult_u32(0u, u_input.b) % 32u), _wgslsmith_dot_vec2_u32(~global1.b.a.zy, global1.b.a.xw)) % 32u));
    let var_3 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(max(vec3<i32>(var_0.d, u_input.a, -35397i >> (global0.a.x % 32u)), firstTrailingBit(countOneBits(vec3<i32>(global0.d, global0.d, 0i)))), -vec3<i32>(0i, i32(-1i) * -105i, ~26949i)), -vec3<i32>(countOneBits(var_0.d), firstTrailingBit(global0.d), ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.d, -21216i, 2147483647i), vec3<i32>(31686i, global1.b.d, u_input.a))));
    let var_4 = 4294967295u;
    return -(15726i ^ _wgslsmith_clamp_i32(global0.d, -1i, global0.d));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = countOneBits(select(~vec4<u32>(u_input.b, global0.a.x, 21097u, u_input.b), reverseBits(global0.a), arg_0.a.a)) << (((arg_0.a.b.a >> (vec4<u32>(global1.b.a.x, countOneBits(arg_0.c), abs(arg_0.c), _wgslsmith_clamp_u32(u_input.b, global0.a.x, 4294967295u)) % vec4<u32>(32u))) ^ arg_0.a.b.a) % vec4<u32>(32u));
    var var_1 = i32(-1i) * -1i;
    global2 = select(-15256i, func_3() | -func_3(), global1.b.c.x);
    global1 = Struct_2(!(!global1.a), arg_0.a.b, arg_0.a.c, -20718i);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-279f, 857f)), 2394f)))) - _wgslsmith_f_op_f32(ceil(-455f))), global0.b);
    return arg_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    return Struct_2(vec4<bool>(true, _wgslsmith_mod_i32(arg_2.d, global1.d >> (u_input.b % 32u)) < _wgslsmith_clamp_i32(u_input.a << (global1.b.a.x % 32u), ~arg_2.d, 0i), true, abs(min(u_input.a, -19154i)) < 13311i), Struct_1(global1.b.a, _wgslsmith_f_op_f32(f32(-1f) * -555f), func_2(Struct_3(arg_0, false, 51326u), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.b), -410f, 1620f)).a.ww, _wgslsmith_clamp_i32((58681i << (global1.b.a.x % 32u)) << (reverseBits(4294967295u) % 32u), global0.d << (4294967295u % 32u), min(~2147483647i, ~0i))), !select(!select(global1.c, vec3<bool>(true, arg_0.a.x, global1.c.x), global1.a.yxz), func_2(Struct_3(Struct_2(global1.a, global3[_wgslsmith_index_u32(arg_0.b.a.x, 12u)], arg_0.a.www, 71678i), arg_0.b.c.x, 15248u), vec3<f32>(-618f, global1.b.b, -1504f)).a.yxz, false), _wgslsmith_div_i32(-22261i, global1.d << (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(arg_2.a.zyw, vec3<u32>(arg_2.a.x, arg_2.a.x, 0u)), ~arg_0.b.a.x) % 32u)));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.b.b, -956f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.b, arg_0)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2 - arg_2)));
    global3 = array<Struct_1, 12>();
    let var_1 = func_2(Struct_3(arg_1.a, arg_0 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -773f)), func_2(arg_1, vec3<f32>(_wgslsmith_f_op_f32(743f + -477f), _wgslsmith_f_op_f32(1139f * global1.b.b), _wgslsmith_f_op_f32(1962f * arg_0))).b.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-647f, arg_2.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.b, arg_1.a.b.b, arg_0))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(674f, arg_2.x, global1.b.b)))))))).d;
    var var_2 = Struct_1(max(reverseBits(_wgslsmith_mult_vec4_u32(global1.b.a, vec4<u32>(arg_1.a.b.a.x, global0.a.x, global1.b.a.x, global1.b.a.x) ^ arg_1.a.b.a)), vec4<u32>(~24772u, _wgslsmith_mult_u32(global0.a.x, arg_1.a.b.a.x), _wgslsmith_sub_u32(global1.b.a.x, 4294967295u), ~u_input.b) ^ vec4<u32>(abs(global0.a.x), 23982u, _wgslsmith_mult_u32(1u, u_input.b), ~u_input.b)), -1000f, select(select(global1.b.c, func_4(func_4(Struct_2(global1.a, Struct_1(global1.b.a, -602f, vec2<bool>(true, global1.b.c.x), 2147483647i), global1.a.zyz, 11297i), arg_1.a.b.b, global1.b), arg_2.x, global3[_wgslsmith_index_u32(u_input.b, 12u)]).c.yz, !global0.c), select(global0.c, vec2<bool>(any(vec4<bool>(true, arg_1.b, global0.c.x, arg_1.b)), true == global1.c.x), select(select(arg_1.a.b.c, global0.c, global0.c), func_4(arg_1.a, -971f, Struct_1(global0.a, var_0.x, global0.c, 0i)).c.xz, any(global1.a))), vec2<bool>(func_3() > countOneBits(-5822i), !(!global0.c.x))), global1.b.d);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1165f, var_2.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b.b)));
    return func_4(func_2(arg_1, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-159f, var_2.b, 370f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.b, -1693f))))))), 1082f, func_4(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1314f) - _wgslsmith_f_op_f32(global0.b + -1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), global0.b)), Struct_1(~(~vec4<u32>(global1.b.a.x, 50957u, var_2.a.x, 4294967295u)), -817f, vec2<bool>(true, false), ~(u_input.a ^ u_input.a))).b);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    var var_0 = vec2<i32>(~(~global1.b.d), -global0.d);
    global3 = array<Struct_1, 12>();
    var var_1 = func_5(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-466f + arg_0.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.b)), _wgslsmith_f_op_f32(ceil(global0.b))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-151f - _wgslsmith_f_op_f32(-global0.b))))), Struct_3(func_4(func_2(Struct_3(Struct_2(global1.a, Struct_1(global1.b.a, global1.b.b, global0.c, -1i), vec3<bool>(global0.c.x, true, arg_0.c.x), var_0.x), global0.c.x, global0.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-935f, arg_0.b, -141f) * vec3<f32>(1844f, 103f, -1179f))), _wgslsmith_f_op_f32(-563f - _wgslsmith_f_op_f32(min(arg_0.b, 1000f))), arg_0), true, u_input.b | arg_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-113f, -2506f) + vec2<f32>(273f, global0.b)))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.b.b, -480f), vec2<f32>(global0.b, 2002f))))))));
    global3 = array<Struct_1, 12>();
    var var_2 = arg_0;
    return min(~var_2.a.x, var_1.b.a.x ^ 38205u) << (u_input.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -2147483647i;
    var var_0 = global3[_wgslsmith_index_u32(~func_1(global1.b, min(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 41795u), vec2<u32>(0u, 38399u))), firstTrailingBit(~vec2<u32>(1u, u_input.b)))), 12u)];
    global3 = array<Struct_1, 12>();
    var_0 = global1.b;
    global2 = global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_3(), var_0.d, abs(_wgslsmith_clamp_i32(-1i, 59178i, _wgslsmith_mult_i32(global1.b.d, 60790i))), -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(global1.d, u_input.a)), ~vec2<i32>(var_0.d, 776i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-453f)), var_0.b)) - var_0.b) - -175f));
}

