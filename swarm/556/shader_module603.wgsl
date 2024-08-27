struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global1: vec2<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> u32 {
    var var_0 = 69970u;
    let var_1 = Struct_1(1f, -903f);
    var var_2 = Struct_2(u_input.a.x);
    let var_3 = true;
    let var_4 = !select(vec2<bool>(firstLeadingBit(-15657i) < (-58522i | var_2.a), _wgslsmith_f_op_f32(-var_1.b) == _wgslsmith_f_op_f32(ceil(var_1.a))), select(select(vec2<bool>(true, arg_1.x), vec2<bool>(var_3, var_3), vec2<bool>(true, true)), !(!vec2<bool>(arg_1.x, false)), vec2<bool>(true, var_1.b != var_1.a)), vec2<bool>(!(arg_1.x && var_3), all(select(vec3<bool>(var_3, var_3, arg_1.x), vec3<bool>(false, true, arg_1.x), true))));
    return select(11841u, firstLeadingBit(0u) ^ (abs(~global1.x) ^ ~114811u), true);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool) -> Struct_3 {
    var var_0 = vec2<u32>((abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 4294967295u), vec2<u32>(5140u, 7194u))) ^ func_3(55104u, vec2<bool>(arg_1, arg_1))) & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) >> (~vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), ~vec2<u32>(28586u, 76698u)), global0.x >> (~(~global0.x >> (global0.x % 32u)) % 32u));
    global1 = abs(reverseBits(max(firstTrailingBit(vec2<u32>(20693u, 3824u)), min(vec2<u32>(4294967295u, global1.x), vec2<u32>(global0.x, 45312u)))));
    global1 = vec2<u32>(global1.x, 4294967295u);
    var var_1 = Struct_2(_wgslsmith_mult_i32(~87272i, _wgslsmith_div_i32(arg_0, u_input.a.x)));
    global0 = abs(vec2<u32>(_wgslsmith_mod_u32(select(92684u, var_0.x, any(vec3<bool>(true, arg_2, arg_2))), _wgslsmith_mod_u32(global0.x << (global0.x % 32u), ~global1.x)), var_0.x & 0u));
    return Struct_3(var_0.x, Struct_2(var_1.a));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3) -> i32 {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(-1i, abs(countOneBits(-35969i)) >> ((abs(arg_2.a) << (~73566u % 32u)) % 32u)), _wgslsmith_clamp_i32(abs(firstTrailingBit(-2147483647i)), select(-countOneBits(arg_2.b.a), 1i, arg_1.x), -_wgslsmith_clamp_i32(1i, arg_2.b.a, -9198i) >> (func_3(_wgslsmith_sub_u32(global1.x, 0u), select(arg_1, vec2<bool>(false, arg_1.x), false)) % 32u)), arg_2.b.a);
    global0 = reverseBits(vec2<u32>(max(arg_0.a ^ arg_2.a, 16910u) | _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, global1.x), 11394u), 29478u));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.b.a >> (1u % 32u), -19090i, arg_0.b.a), _wgslsmith_add_vec3_i32(u_input.a.zxw, vec3<i32>(-56900i, arg_2.b.a, arg_2.b.a))), ~vec3<i32>(var_0.x, var_0.x, var_0.x | 23501i)));
    global0 = ~countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.a, 0u), vec2<u32>(global1.x, 45768u) & vec2<u32>(global1.x, 22516u)) & _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.a, 4294967295u), vec2<u32>(0u, 0u)), ~vec2<u32>(4294967295u, global1.x)));
    global1 = firstTrailingBit(select(vec2<u32>(select(arg_2.a, global1.x, false), 84257u), vec2<u32>(0u, min(arg_0.a, arg_0.a)), !select(vec2<bool>(true, false), vec2<bool>(false, false), arg_1))) << (vec2<u32>(0u, 76369u) % vec2<u32>(32u));
    return u_input.a.x ^ ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(70501i, 1i, -1i, arg_2.b.a), vec4<i32>(-2147483647i, u_input.a.x, arg_2.b.a, -2147483647i)));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-675f, arg_1.a, 228f, arg_1.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-500f, 1000f, arg_1.a, -1165f))), vec4<bool>(false, false, true, true))))))));
    let var_1 = vec4<bool>(false, false, any(select(vec3<bool>(any(vec4<bool>(true, true, true, false)), true, all(vec2<bool>(false, true))), vec3<bool>(select(false, false, true), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))))), all(select(vec3<bool>(select(true, false, true), true, true), vec3<bool>(global0.x == global0.x, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), true))));
    global1 = reverseBits(vec2<u32>(_wgslsmith_mult_u32(global0.x, 4294967295u) ^ ~global0.x, reverseBits(func_3(0u, var_1.yy)))) << ((vec2<u32>(reverseBits(67734u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, 12699u), vec3<u32>(global0.x, global1.x, 1u)))) << (_wgslsmith_clamp_vec2_u32(~max(vec2<u32>(global0.x, 4294967295u), vec2<u32>(0u, 1u)), ~(~vec2<u32>(global0.x, 1u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, global0.x))) % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = firstTrailingBit(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x >> (7995u % 32u), global1.x), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, global0.x), vec2<u32>(1u, 4294967295u))))));
    global0 = vec2<u32>(global0.x, _wgslsmith_clamp_u32(global0.x, global1.x, ~(~_wgslsmith_mult_u32(global0.x, 10418u))));
    return func_2(~u_input.a.x, (-277f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-659f, var_0.x, var_1.x)))) & !all(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), !(!all(vec2<bool>(false, var_1.x))) && any(select(vec3<bool>(var_1.x, true, true), vec3<bool>(false, var_1.x, var_1.x), select(var_1.wxw, var_1.yyz, var_1.x)))).b;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_div_u32(global1.x << (~global0.x % 32u), 0u), arg_1);
    let var_1 = ~(25808u ^ (36849u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.x, 23977u, global0.x), select(vec3<u32>(1u, global1.x, global0.x), vec3<u32>(4294967295u, 13778u, 1u), vec3<bool>(arg_0, true, arg_0))) % 32u)));
    var var_2 = func_5(func_4(func_2(-_wgslsmith_add_i32(1i, arg_1.a), true, true == (global0.x == global0.x)), select(!select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), vec2<bool>(arg_0, true)), vec2<bool>(any(vec2<bool>(arg_0, arg_0)), arg_0), false), func_2(-var_0.b.a, true, arg_0)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(169f))) - _wgslsmith_f_op_f32(444f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -173f) + _wgslsmith_f_op_f32(round(262f))), -394f))));
    let var_3 = _wgslsmith_f_op_f32(floor(1072f));
    global0 = _wgslsmith_sub_vec2_u32(((~vec2<u32>(4294967295u, 0u) << (select(vec2<u32>(global0.x, global0.x), vec2<u32>(52740u, 31328u), vec2<bool>(arg_0, true)) % vec2<u32>(32u))) >> (vec2<u32>(global1.x | var_0.a, abs(37873u)) % vec2<u32>(32u))) >> (vec2<u32>(~0u, var_0.a) % vec2<u32>(32u)), ~select(~(~vec2<u32>(25982u, 18704u)), ~max(vec2<u32>(70267u, var_1), vec2<u32>(global0.x, 7125u)), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), vec2<bool>(false, arg_0)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec2<u32>(global1.x, global0.x);
    var var_0 = false;
    global1 = vec2<u32>(_wgslsmith_mod_u32(~(~_wgslsmith_mod_u32(global0.x, 0u)), ~func_1(true, Struct_2(u_input.a.x), u_input.a.yy)), func_3(abs(_wgslsmith_mult_u32(global0.x, global1.x)), vec2<bool>(true, true)) & ~0u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1706f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(133f, 777f)), -1540f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -122f) * _wgslsmith_f_op_f32(2315f + 545f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(~1u, _wgslsmith_mult_u32(global1.x, 38453u)) >> (~func_1(false, Struct_2(u_input.a.x), vec2<i32>(1884i, u_input.a.x)) % 32u), _wgslsmith_dot_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, global0.x, 4294967295u, global1.x), vec4<u32>(51603u, global0.x, 4294967295u, global1.x), vec4<u32>(global1.x, 65109u, global0.x, 0u)), vec4<u32>(42225u, global0.x, 14405u, 38843u)), ~vec4<u32>(5366u, global0.x, global1.x, 4294967295u) | ~vec4<u32>(global0.x, global0.x, 4294967295u, 0u)), ~33336u, ~4294967295u >> (global0.x % 32u)), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x << (global0.x % 32u), 4294967295u, countOneBits(global0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, global0.x, global0.x) << (vec3<u32>(1u, 0u, 49072u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 1u, global0.x))), ~reverseBits(max(vec3<u32>(global0.x, global1.x, global0.x), vec3<u32>(global0.x, 7827u, global1.x)))));
}

