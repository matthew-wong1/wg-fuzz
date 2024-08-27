struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<u32>(52290u, 4294967295u), -6656i, false, 16259u), Struct_1(vec2<u32>(13895u, 23846u), -32710i, false, 0u), Struct_1(vec2<u32>(4294967295u, 4294967295u), -1i, true, 0u), Struct_1(vec2<u32>(0u, 31418u), -16736i, false, 4294967295u), Struct_1(vec2<u32>(46945u, 0u), i32(-2147483648), false, 0u), Struct_1(vec2<u32>(4294967295u, 57903u), i32(-2147483648), false, 1u), Struct_1(vec2<u32>(46581u, 77355u), -17511i, false, 4294967295u), Struct_1(vec2<u32>(0u, 12823u), 1i, false, 69563u), Struct_1(vec2<u32>(4294967295u, 9802u), 6677i, true, 0u), Struct_1(vec2<u32>(6551u, 0u), 10829i, true, 22070u), Struct_1(vec2<u32>(65181u, 34100u), -1i, false, 1u), Struct_1(vec2<u32>(3244u, 68211u), 2147483647i, false, 0u), Struct_1(vec2<u32>(4294967295u, 30289u), 0i, true, 7474u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 0i, false, 1u), Struct_1(vec2<u32>(0u, 1u), -25887i, true, 0u), Struct_1(vec2<u32>(1u, 4294967295u), 18815i, false, 55891u), Struct_1(vec2<u32>(13529u, 1u), 0i, true, 4235u), Struct_1(vec2<u32>(1u, 0u), i32(-2147483648), true, 22444u), Struct_1(vec2<u32>(1u, 36359u), 14431i, true, 0u), Struct_1(vec2<u32>(29722u, 14769u), i32(-2147483648), true, 4294967295u), Struct_1(vec2<u32>(4294967295u, 70534u), 2147483647i, false, 1u), Struct_1(vec2<u32>(13433u, 4294967295u), -1274i, false, 4294967295u), Struct_1(vec2<u32>(43890u, 38718u), 22000i, false, 45850u), Struct_1(vec2<u32>(4294967295u, 74139u), -12419i, true, 65918u), Struct_1(vec2<u32>(61394u, 68823u), -41034i, true, 4294967295u), Struct_1(vec2<u32>(48966u, 1u), 23924i, false, 1u), Struct_1(vec2<u32>(1u, 6220u), 55068i, false, 1u), Struct_1(vec2<u32>(77142u, 14746u), i32(-2147483648), true, 26235u), Struct_1(vec2<u32>(34871u, 0u), -1i, true, 44508u), Struct_1(vec2<u32>(43401u, 4294967295u), 2147483647i, false, 1u), Struct_1(vec2<u32>(4294967295u, 0u), -1i, true, 4294967295u));

var<private> global1: vec4<u32> = vec4<u32>(35848u, 1u, 81706u, 37276u);

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 28>;

var<private> global4: f32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    global4 = 1961f;
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(max(max(~vec4<u32>(global1.x, global1.x, global2.d, 4294967295u), ~vec4<u32>(50931u, global2.d, 4294967295u, 52703u)), min(reverseBits(vec4<u32>(global1.x, global2.d, global2.d, global2.d)), vec4<u32>(4294967295u, 11298u, 4294967295u, global1.x))), (_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a.x, 41583u, global1.x, global1.x), vec4<u32>(global1.x, 51444u, global2.a.x, global2.a.x)) << (countOneBits(vec4<u32>(global2.d, 79697u, global2.a.x, 15835u)) % vec4<u32>(32u))) << (vec4<u32>(~0u, ~21318u, _wgslsmith_add_u32(0u, 4294967295u), 30458u) % vec4<u32>(32u))), global1.x), 31u)];
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, firstTrailingBit(global2.a.x), global1.x) & countOneBits(abs(global1.zwz)), countOneBits(~global1.xxw)), global1.wwz);
    var var_1 = _wgslsmith_sub_u32(12197u, ~(~(~global2.a.x))) << (_wgslsmith_mult_u32(17802u ^ _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(9761u, global1.x, global1.x, global2.d), vec4<u32>(global1.x, global1.x, global1.x, global2.d)), firstLeadingBit(vec4<u32>(110756u, 0u, global2.a.x, global1.x))), max(~(~global2.a.x), 0u)) % 32u);
    var var_2 = Struct_1(~(~(~vec2<u32>(17218u, global1.x) ^ ~vec2<u32>(global1.x, global2.d))), u_input.a.x, any(select(select(vec2<bool>(true, true), select(vec2<bool>(global2.c, global2.c), vec2<bool>(global2.c, true), global2.c), true), select(select(vec2<bool>(true, global2.c), vec2<bool>(global2.c, global2.c), false), vec2<bool>(global2.c, true), select(vec2<bool>(false, global2.c), vec2<bool>(false, global2.c), false)), true)), ~select(global2.a.x, _wgslsmith_add_u32(~global2.d, ~global2.d), !(global2.c || false)));
    return _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-abs(vec4<i32>(2147483647i, 2147483647i, u_input.b, 36511i) ^ vec4<i32>(global2.b, 2147483647i, 57039i, 0i)), _wgslsmith_sub_vec4_i32(-(vec4<i32>(u_input.b, 20755i, var_2.b, var_2.b) ^ vec4<i32>(26062i, 2147483647i, -1i, var_2.b)), vec4<i32>(u_input.b, var_2.b, 39657i, u_input.b) ^ firstLeadingBit(vec4<i32>(30564i, 12511i, u_input.a.x, var_2.b)))), firstTrailingBit(-vec4<i32>(u_input.b ^ -8607i, u_input.a.x, -24204i, ~2147483647i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = -func_3();
    let var_1 = arg_1;
    global1 = _wgslsmith_sub_vec4_u32(~select(~vec4<u32>(arg_3.d, arg_0.x, 4294967295u, 63648u), min(vec4<u32>(global1.x, arg_3.a.x, global1.x, var_1.a.a.x), vec4<u32>(arg_3.a.x, 27049u, arg_1.a.a.x, 36993u) >> (vec4<u32>(var_1.b.a.x, arg_3.d, var_1.a.a.x, var_1.a.d) % vec4<u32>(32u))), select(select(vec4<bool>(false, true, arg_3.c, arg_2), vec4<bool>(false, false, true, arg_1.a.c), vec4<bool>(true, arg_3.c, arg_1.b.c, true)), select(vec4<bool>(false, var_1.b.c, arg_3.c, arg_1.a.c), vec4<bool>(arg_3.c, true, false, arg_2), var_1.a.c), select(vec4<bool>(arg_1.b.c, true, false, arg_3.c), vec4<bool>(true, arg_3.c, true, false), vec4<bool>(arg_1.a.c, global2.c, var_1.b.c, arg_1.a.c)))), vec4<u32>(global1.x, arg_1.a.d, ~(~arg_0.x), 4294967295u) & vec4<u32>(max(select(arg_0.x, 1u, true), var_1.a.d), global2.d, 0u, ~73986u));
    global4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = _wgslsmith_f_op_f32(abs(2053f));
    return abs(min(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.a.x, 54460u, arg_3.d, 33577u), vec4<u32>(arg_0.x, global2.a.x, var_1.b.a.x, var_1.a.a.x), vec4<u32>(arg_3.a.x, 5368u, var_1.a.a.x, 4294967295u))), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(arg_1.a.d, 69589u, 67349u, arg_1.b.a.x)), ~(~vec4<u32>(arg_3.a.x, 0u, global2.d, 1u)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -506f)));
    var var_1 = abs(abs(abs(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, global2.d, 4294967295u), vec4<u32>(global2.d, arg_0.x, global2.a.x, global2.a.x)))));
    var var_2 = Struct_1(~arg_0.yy, arg_2.b.b, arg_2.b.c, 37582u);
    var var_3 = var_0;
    var var_4 = Struct_1(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(arg_0.x, 5162u), 39040u)), ~select(var_1.zz, ~var_1.yz, true)), arg_1, arg_2.a.c & true, _wgslsmith_dot_vec4_u32(vec4<u32>(~global2.d, abs(global1.x), min(37017u, 0u), 1u) ^ ~select(vec4<u32>(87878u, arg_0.x, 15022u, var_2.d), vec4<u32>(arg_0.x, global1.x, 36089u, global1.x), var_2.c), select(_wgslsmith_add_vec4_u32(abs(vec4<u32>(var_2.d, 1u, 48877u, 1u)), vec4<u32>(var_1.x, 1u, var_1.x, global2.a.x) & vec4<u32>(0u, arg_2.a.d, 4294967295u, arg_2.b.d)), func_2(arg_0, Struct_2(Struct_1(var_1.ww, 1i, false, 0u), global0[_wgslsmith_index_u32(arg_2.b.d, 31u)], vec3<f32>(var_0, arg_3, var_0)), var_2.c, global0[_wgslsmith_index_u32(reverseBits(var_2.d), 31u)]), true)));
    return Struct_2(Struct_1(~(~firstTrailingBit(var_1.zz)), _wgslsmith_mod_i32(-arg_2.a.b, abs(var_2.b)) << (var_2.d % 32u), var_2.c, global1.x), Struct_1(min(vec2<u32>(17246u, global2.d), var_2.a) ^ vec2<u32>(~2800u, ~var_4.d), _wgslsmith_mod_i32(global2.b, var_2.b) >> (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(76898u, 27557u, global2.a.x, var_4.a.x), vec4<u32>(var_2.d, var_4.a.x, 4753u, 32788u))) % 32u), false, ~84907u), vec3<f32>(_wgslsmith_f_op_f32(407f - -566f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1835f))), arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(floor(arg_2.c.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)) * 1121f)));
    global2 = func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.d, 102398u, firstTrailingBit(global1.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(arg_1.x, global1.x, global2.a.x)), vec3<u32>(arg_0.b.d, 1u, arg_1.x)), global1.ywy), global1.zzx), ~global2.b ^ ~(_wgslsmith_mod_i32(u_input.b, u_input.b) >> (~arg_0.b.d % 32u)), func_1(firstTrailingBit(~(~global1.ywx)), arg_0.b.b, Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1156u, 82415u), 31u)], global0[_wgslsmith_index_u32(max(func_2(vec3<u32>(global1.x, 1u, 1u), Struct_2(global0[_wgslsmith_index_u32(arg_0.b.a.x, 31u)], arg_0.a, arg_0.c), global2.c, arg_0.a).x, ~1u), 31u)], _wgslsmith_f_op_vec3_f32(arg_0.c + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, 1000f, arg_0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f + _wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x))))).b;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1020f)) * _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_div_f32(arg_0.c.x, arg_0.c.x))))), _wgslsmith_div_f32(-1256f, arg_0.c.x));
    let var_1 = global2.b >> (_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(55766u, global2.d)) % 32u);
    global1 = ~vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, arg_1.x), 0u), global1.x, ~((4294967295u | arg_0.a.a.x) << (func_2(global1.zwz, Struct_2(arg_0.b, Struct_1(vec2<u32>(4294967295u, arg_1.x), 20880i, global2.c, 0u), vec3<f32>(-569f, arg_0.c.x, 2369f)), false, global0[_wgslsmith_index_u32(61397u, 31u)]).x % 32u)), 1u & ((global2.d & global2.a.x) << (84520u % 32u)));
    return func_1(global1.wxz, 0i, Struct_2(func_1(global1.wxy, firstTrailingBit(reverseBits(60312i)), global3[_wgslsmith_index_u32(~firstTrailingBit(global2.d), 28u)], _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(-arg_0.c.x))).b, arg_0.b, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(1704f - arg_0.c.x), arg_0.c.x), arg_0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x + -1245f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1141f)) * _wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(581f)))), true)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 31>();
    global3 = array<Struct_2, 28>();
    var var_0 = func_4(func_1(~_wgslsmith_mult_vec3_u32(~global1.wzy, ~vec3<u32>(global1.x, 27986u, 39495u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b) ^ _wgslsmith_add_vec2_i32(vec2<i32>(34399i, -35724i), vec2<i32>(u_input.a.x, u_input.b)), _wgslsmith_sub_vec2_i32(u_input.a, u_input.a)), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(29427u, global2.d, 4294967295u, global1.x), vec4<u32>(global2.a.x, 1u, global1.x, 1u)) | global2.a.x, 28u)], _wgslsmith_f_op_f32(floor(793f))), global1.wz);
    let var_1 = i32(-1i) * -abs(31307i);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(386f, 1054f, -342f, 491f) + vec4<f32>(330f, 260f, -525f, 501f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1414f, 786f, -848f, 208f) * vec4<f32>(-1486f, 1278f, -1000f, 1050f))))), global2.b);
}

