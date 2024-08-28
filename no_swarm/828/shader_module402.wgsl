struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

var<private> global1: Struct_3;

var<private> global2: array<bool, 29>;

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global4: Struct_3 = Struct_3(17271i, vec2<i32>(-7888i, 1i), vec4<i32>(35491i, 11611i, 0i, 13427i));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_1(all(!select(global0[_wgslsmith_index_u32(u_input.c & arg_0.e.b.x, 4u)], global3.xw, global0[_wgslsmith_index_u32(~0u, 4u)])), vec2<u32>(_wgslsmith_sub_u32(1u, u_input.c), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 38003u, u_input.c), vec3<u32>(arg_0.d.b.x, 42972u, 52u)), arg_0.d.b.x | arg_0.d.b.x), reverseBits(abs(arg_0.e.b.x)))));
    var var_1 = countOneBits(_wgslsmith_clamp_vec3_u32(countOneBits(select(min(vec3<u32>(u_input.a, 1u, arg_0.e.b.x), vec3<u32>(3832u, 82520u, arg_0.e.b.x)), ~vec3<u32>(1u, 0u, u_input.a), global3.x)), ~firstTrailingBit(select(vec3<u32>(4294967295u, 0u, arg_0.e.b.x), vec3<u32>(416u, var_0.b.x, 12483u), true)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, 15121u), 17024u), _wgslsmith_mult_u32(33471u, _wgslsmith_add_u32(var_0.b.x, 67483u)), 4294967295u)));
    var var_2 = _wgslsmith_mod_vec4_i32(global4.c, abs(vec4<i32>(reverseBits(-3154i), abs(0i), _wgslsmith_div_i32(~0i, -arg_0.a.x), global4.a)));
    global2 = array<bool, 29>();
    var_0 = Struct_1(all(select(!select(vec3<bool>(global3.x, false, arg_0.c.a), global3.yyx, global3.zzx), !select(global3.xzz, global3.xxy, true), all(global0[_wgslsmith_index_u32(var_0.b.x, 4u)]) && select(var_0.a, false, false))), var_1.zz);
    return 0u;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = vec3<u32>(func_3(Struct_2(countOneBits(vec3<i32>(-16457i, 2147483647i, -15358i)), _wgslsmith_f_op_f32(f32(-1f) * -1141f), Struct_1(false, vec2<u32>(u_input.c, 4294967295u)), Struct_1(arg_0, vec2<u32>(4294967295u, u_input.a)), Struct_1(global3.x, vec2<u32>(11707u, 0u)))) | firstLeadingBit(firstLeadingBit(~u_input.a)), ~(~u_input.c), ~_wgslsmith_mod_u32(func_3(Struct_2(vec3<i32>(-40863i, 31730i, global1.c.x), -1427f, Struct_1(arg_0, vec2<u32>(90111u, u_input.a)), Struct_1(global3.x, vec2<u32>(u_input.a, u_input.a)), Struct_1(global3.x, vec2<u32>(17435u, 23423u)))), ~firstLeadingBit(u_input.c)));
    global1 = Struct_3(-2147483647i, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(~(~vec2<i32>(global4.b.x, 0i)), global1.b), vec2<i32>(u_input.b.x, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -11785i, u_input.b.x, -3552i), global1.c ^ vec4<i32>(global4.b.x, global4.a, -1i, _wgslsmith_mult_i32(u_input.b.x, global1.a))));
    let var_1 = ~7014u;
    global1 = Struct_3(global1.c.x, abs(_wgslsmith_mod_vec2_i32(global1.b, max(u_input.b, vec2<i32>(global4.b.x, 2147483647i)))), _wgslsmith_add_vec4_i32(countOneBits(global4.c), reverseBits(~(vec4<i32>(u_input.b.x, global1.a, u_input.b.x, global4.c.x) << (vec4<u32>(var_1, 26613u, 53183u, var_1) % vec4<u32>(32u))))));
    global2 = array<bool, 29>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-944f)) + _wgslsmith_f_op_f32(1000f + -435f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-638f * 1514f))))))));
}

fn func_1() -> vec4<bool> {
    global1 = Struct_3(select(1i, abs(~0i), any(!vec3<bool>(false, global2[_wgslsmith_index_u32(60319u, 29u)], true))) >> (~34899u % 32u), -_wgslsmith_mult_vec2_i32(vec2<i32>(10697i >> (1u % 32u), -45408i), -vec2<i32>(2147483647i, global1.c.x)), ~vec4<i32>(-1293i, -global1.c.x, _wgslsmith_add_i32(global1.a, global4.b.x), global4.b.x) >> (max(max(vec4<u32>(u_input.c, u_input.a, 2971u, 26542u), firstTrailingBit(vec4<u32>(u_input.c, 1u, u_input.c, 42340u))), max(vec4<u32>(u_input.c, 31159u, 18402u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.a), vec4<u32>(6363u, u_input.c, 4294967295u, u_input.c), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.c)))) % vec4<u32>(32u)));
    global1 = Struct_3(~global1.a ^ abs(_wgslsmith_clamp_i32(1i, 0i, u_input.b.x << (u_input.a % 32u))), _wgslsmith_mod_vec2_i32(-global4.c.zw, vec2<i32>(-global4.a, _wgslsmith_mult_i32(global1.b.x, -1i))), -global1.c);
    global3 = vec4<bool>(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(4294967295u, 25366u, u_input.a))) > 4589u, !select(_wgslsmith_f_op_f32(max(-1138f, 1019f)) != _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(0u, 29u)])), all(vec4<bool>(false, true, global3.x, true)) | true, true || global2[_wgslsmith_index_u32(1u, 29u)]), reverseBits(-_wgslsmith_mult_i32(u_input.b.x, -62461i)) <= min(max(u_input.b.x << (5636u % 32u), global1.b.x), firstLeadingBit(0i)), global3.x);
    global0 = array<vec2<bool>, 4>();
    return vec4<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a) | ~abs(_wgslsmith_add_u32(22478u, u_input.a)), 29u)], !global2[_wgslsmith_index_u32(~u_input.a, 29u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(2968u, 1u), 4294967295u, u_input.a), u_input.c), 29u)], any(global0[_wgslsmith_index_u32(12240u, 4u)]));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_2(min(max(global4.c.xzx, vec3<i32>(u_input.b.x >> (u_input.a % 32u), _wgslsmith_dot_vec3_i32(global4.c.wwy, global4.c.wwz), i32(-1i) * -38439i)), _wgslsmith_div_vec3_i32(global4.c.yyz, firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.b.x, -3125i, global4.c.x), vec3<i32>(10249i, 35272i, u_input.b.x))))), 167f, Struct_1(u_input.b.x == (firstTrailingBit(global1.a) >> (~u_input.c % 32u)), abs(~vec2<u32>(u_input.a, u_input.c))), Struct_1(~(~u_input.a) >= min(49975u, ~u_input.c), max(~vec2<u32>(u_input.a, u_input.a), ~(~vec2<u32>(11912u, u_input.a)))), Struct_1(arg_0.x, abs(vec2<u32>(~57319u, _wgslsmith_mult_u32(1u, u_input.c)))));
    var var_1 = abs(global1.c);
    var var_2 = var_0.c;
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(486f, var_0.b))))) + _wgslsmith_f_op_vec2_f32(-arg_1.yx))));
    var_1 = _wgslsmith_add_vec4_i32(~vec4<i32>(var_1.x, ~(-2147483647i), firstTrailingBit(4347i), u_input.b.x << ((var_0.d.b.x << (u_input.c % 32u)) % 32u)), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(global4.c.x, -2147483647i, global4.b.x, var_1.x)) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.c, 2513u, 4294967295u), vec4<u32>(var_0.c.b.x, var_0.e.b.x, u_input.a, 1u)), min(vec4<u32>(22178u, 4294967295u, u_input.c, u_input.c), vec4<u32>(var_2.b.x, var_2.b.x, var_0.d.b.x, var_2.b.x)), vec4<u32>(var_2.b.x, 57524u, 70879u, u_input.c)) % vec4<u32>(32u)), select(-vec4<i32>(var_0.a.x, -3190i, var_1.x, var_0.a.x), global1.c, select(vec4<bool>(var_2.a, true, true, false), vec4<bool>(arg_3.x, true, true, global3.x), arg_0)) << (_wgslsmith_add_vec4_u32(min(vec4<u32>(var_0.e.b.x, 50179u, var_2.b.x, var_0.c.b.x), vec4<u32>(u_input.a, u_input.a, u_input.c, var_2.b.x)), vec4<u32>(27826u, u_input.a, var_0.d.b.x, u_input.a) | vec4<u32>(u_input.a, 37073u, u_input.c, u_input.c)) % vec4<u32>(32u))));
    return Struct_3(_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(-var_0.a.yx, ~global1.c.xy), -vec2<i32>(-45266i, u_input.b.x)), vec2<i32>(-1i) * -var_1.ww, vec4<i32>(~(-2093i), ~u_input.b.x, global4.c.x, -1i));
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    var var_0 = vec4<bool>(global3.x, !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~vec2<u32>(48489u, u_input.c), ~vec2<u32>(0u, 17107u))), 29u)], !any(func_1().zw), true);
    return func_4(!vec4<bool>(!var_0.x, all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 29u)], global2[_wgslsmith_index_u32(u_input.a, 29u)], var_0.x)) == true, global2[_wgslsmith_index_u32(~min(0u, 0u), 29u)], any(select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(false, global3.x, true, false), global2[_wgslsmith_index_u32(7945u, 29u)]))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2023f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1807f + -1368f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1000f, 2029f)), _wgslsmith_f_op_f32(-483f - -975f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1381f + -228f) - _wgslsmith_f_op_f32(f32(-1f) * -888f)))), vec2<f32>(-1000f, -632f), vec3<bool>(true, global3.x, all(vec2<bool>(func_1().x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_5(func_4(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(874f, -436f, -931f) - vec3<f32>(-2027f, 1112f, -1000f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(477f, -1627f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -807f))))), func_1().xwx));
    global4 = Struct_3(global1.b.x, abs(min(vec2<i32>(-1i, var_1.c.x), -vec2<i32>(0i, 0i)) ^ vec2<i32>(~0i, abs(18650i))), ~func_5(var_1).c);
    let var_2 = var_1.c.xy;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f * -407f))) * 1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1535f - 1047f)))), 319f)));
    let x = u_input.a;
    s_output = StorageBuffer(max(0u, u_input.a | 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(3855f, -249f)) * 1f), select(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(0u, 30121u, u_input.c)), vec3<u32>(~3975u, ~u_input.c, ~u_input.a)), ~(~(vec3<u32>(21907u, 30112u, 0u) ^ vec3<u32>(u_input.c, 0u, u_input.c))), vec3<bool>(true, false, any(global3.zww) || true)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(34192u, 1u, 0u)) | vec3<u32>(64868u, 18239u, firstTrailingBit(46006u)), ~select(vec3<u32>(u_input.a, u_input.c, u_input.a), vec3<u32>(u_input.a, u_input.c, 17026u), global3.wwy) << (vec3<u32>(~9003u, 0u, u_input.c | u_input.c) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1417f, 758f, -897f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-3075f, -648f, -903f)))), select(global3.wwy, func_1().wxw, global3.x)))));
}

